function [ p ] = my_normalized_histogram( form, L )
% Author : Emre Ateþ
% This function gives the normalized histogram 
% values of an image (black & white)
% and needs two variable form is image's matrix in double,
% L is gray bit level
%% Defining the needed values
[m,n] = size(form);
p = zeros(m,n);
%% Process of calculating normalized values
for i = 0 : (L-1)
   a = form(form(:,:) == i);
   b = length(a);
   p(i+1) = b/(m*n);
end
end

