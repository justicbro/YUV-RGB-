clc; clear; close all;
% Set the video information
videoSequence = 'D:\学习文件\张量补全\代码\code_FCTN_Decomposition_unencrypted\code_FCTN_Decomposition\实验结果保存\高光谱图数据\container_qcif\container_qcif.yuv';
width  = 176;   %你必须知道你自己的YUV的长、宽和帧数，自行修改这三个参数
height = 144;
nFrame = 300;
RGBim = uint8(zeros(height,width,3,nFrame));

% Read the video sequence
[Y,U,V] = yuvRead(videoSequence, width, height ,nFrame); 
[R,G,B] = yuv2rgb(Y,U,V);
for i = 1:nFrame
    X = cat(3,R(:,:,i),G(:,:,i),B(:,:,i));
    RGBim(:,:,:,i) = X;
end
imshow(RGBim(:,:,:,i)); %展示最后一帧时候的图片
% colormap("parula")
