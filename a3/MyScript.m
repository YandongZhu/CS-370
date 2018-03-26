X = double(imread('mountain.jpg'));

[Y10, drop10] = Compress(X, 0.0000000000000001);
error10 = sqrt(mean2((Y10-X).^ 2)/(mean2(X).^ 2));
[Y45, drop45] = Compress(X, 16);
error45 = sqrt(mean2((Y45-X).^ 2)/(mean2(X).^ 2));
[Y75, drop75] = Compress(X, 69);
error75 = sqrt(mean2((Y75-X).^ 2)/(mean2(X).^ 2));
[Y90, drop90] = Compress(X, 160);
error90 = sqrt(mean2((Y90-X).^ 2)/(mean2(X).^ 2));

figure(1);
colormap(gray(256));
digits(4);

%plot the 4 subimage with different drop ratio
subplot(2, 2, 1);
image(Y10);
axis image;
axis off;
title(['drop = ' num2str(drop10*100) '%, error = ' num2str(error10*100) '%']);

subplot(2, 2, 2);
image(Y45);
axis image;
axis off;
title(['drop = ' num2str(drop45*100) '%, error = ' num2str(error45*100) '%']);


subplot(2, 2, 3);
image(Y75);
axis image;
axis off;
title(['drop = ' num2str(drop75*100) '%, error = ' num2str(error75*100) '%']);

subplot(2, 2, 4);
image(Y90);
axis image;
axis off;
title(['drop = ' num2str(drop90*100) '%, error = ' num2str(error90*100) '%']);