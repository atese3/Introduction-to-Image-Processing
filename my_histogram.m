function [ o ] = my_histogram( form, L )
% Author : Emre Ateþ
% This function gives the histogram graph of an image(black & white)
% and needs two variable form is image's matrix in double,
% L is gray bit level
%% Defining the needed values
[m,n] = size(form);
o = zeros(L);
%% Process of calculating the gray level values
for i = 0 : (L-1)
    a = form(form(:,:) == i);
    b = length(a);
    o(i+1) = b;
end
%% Plotting the result
figure;
subplot(2,1,1);
bar(0:L-1,o);
xlim([0 255]);
title('My Histogram Graph');
xlabel('Gray Level');
ylabel('Value');
grid on;
end

