clc;
clear all;
close all;
s=serial('com3');
fopen(s);
fwrite(s,'left');
fclose(s);