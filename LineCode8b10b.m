% Manav Chotalia (21MECE05)
% Embedded Networking Lab
% 8b10b encoding
clc
clear all
close all
% Input String
data = input("Enter String to input: ",'s'); 
% Sring to ASCII value
decimal = double(data);
% Decimal Value Binary conversion
binary = de2bi(decimal',8);
% Reshaping Array to single bit Stream
stream = reshape(binary,1,8*length(data));
% calling function to encoding 8b10b 
encoded = Encoding_8b10b(stream);

subplot(211);
stairs(stream,'linewidth',1)
 axis([1 length(stream) -1 2])
 title('input Data Stream')
 grid on
 subplot(212);
stairs(encoded,'linewidth',1)
 axis([1 length(encoded) -1 2])
 title('Output Encoded 8b10b')
 grid on