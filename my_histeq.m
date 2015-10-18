function [ e ] = my_histeq( form , L )
% Author : Emre Ateþ
% This function gives the equalized histogram values of an image(black&white)
% and needs two variable form is image's matrix in double,
% L is gray bit level
%% Determining the needed values
[m,n] = size(form);
norm = my_normalized_histogram(form,L);
c = 0;
%% Process of histogram equalization
for i = 0 : (L-1)
    c = c + norm(i+1);
    new = (L-1)*c;
    form(form(:,:) == i) = new;
end
%% Plotting the equalized image
e = form;
e = uint8(e); % to show image properly 
figure;
imshow(e);
title('My Histeq Graph');
end

