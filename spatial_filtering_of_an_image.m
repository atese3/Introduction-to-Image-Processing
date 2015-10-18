% Emre Ateþ 151220114011
% Introduction to Image Processing
% Homework # 2 - Question # 3
%% Get image from the computer
rd = imread('C:\Users\Emre\Desktop\ödev\image\2\lena_noisy.png');
db = double(rd);
[m,n] = size(db);
%% Defining filter
flt1 = [1,1,1;1,1,1;1,1,1];
flt2 = [1,2,1;2,4,2;1,2,1];
flt1 = flt1.*(1/9);
flt2 = flt2.*(1/12);
%% Create and defining zero padding pad
pd = zeros(m+2,n+2);
pd(2:end-1,2:end-1) = db(:,:);
%% Spatial Filtering Process with first filter
fn1(1:m,1:n) = pd(1:m,1:n)*flt1(1,1)+pd(2:m+1,1:n)*flt1(2,1)+pd(3:m+2,1:n)*flt1(3,1)...
    +pd(1:m,2:n+1)*flt1(2,1)+pd(2:m+1,2:n+1)*flt1(2,2)+pd(3:m+2,2:n+1)*flt1(2,3)...
    +pd(1:m,3:n+2)*flt1(3,1)+pd(2:m+1,3:n+2)*flt1(3,2)+pd(3:m+2,3:n+2)*flt1(3,3);
%% Spatial Filtering Process with second filter
fn2(1:m,1:n) = pd(1:m,1:n)*flt2(1,1)+pd(2:m+1,1:n)*flt2(2,1)+pd(3:m+2,1:n)*flt2(3,1)...
    +pd(1:m,2:n+1)*flt2(2,1)+pd(2:m+1,2:n+1)*flt2(2,2)+pd(3:m+2,2:n+1)*flt2(2,3)...
    +pd(1:m,3:n+2)*flt2(3,1)+pd(2:m+1,3:n+2)*flt2(3,2)+pd(3:m+2,3:n+2)*flt2(3,3);
%% Changing form of value
e1 = uint8(fn1);
e2 = uint8(fn2);
%% Plotting
figure(1);
imshow(rd);
title('Original Image');
figure(2);
imshow(e1);
title('Filter # 1');
figure(3);
imshow(e2);
title('Filter # 2');