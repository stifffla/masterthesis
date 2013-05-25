%run('toolbox/vl_setup')
% Ia = vl_impattern('roofs1');
% Ib = vl_impattern('roofs2');
% class454_image2
% class454_image3
Ia = imread('../img/coin_dataset_ACCV_EH/class454_image2.png');
Ib = imread('../img/coin_dataset_ACCV_EH/class454_image3.png');
image(Ia);
image(Ib);
Ia = single(rgb2gray(Ia));
Ib = single(rgb2gray(Ib));
[fa,da] = vl_sift(Ia);
[fb,db] = vl_sift(Ib);
[matches, scores] = vl_ubcmatch(da, db);
subplot(1,2,1);
imshow(uint8(Ia));
hold on;
plot(fa(1,matches(1,:)),fa(2,matches(1,:)),'b*');
subplot(1,2,2);
imshow(uint8(Ib));
hold on;
plot(fb(1,matches(2,:)),fb(2,matches(2,:)),'r*');

