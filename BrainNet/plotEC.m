% 画脑区节点图
% 用来生成edge文件
clear all
net=zeros(116,116);

% 抑制连接
idx1{1,1} = [70, 30];
idx1{1,2} = [52, 1];
idx1{1,3} = [46, 69];
idx1{1,4} = [66, 18];
idx1{1,5} = [63, 50];
idx1{1,6} = [44, 79];
idx1{1,7} = [68, 58];
idx1{1,8} = [90, 69];
idx1{1,9} = [43, 58];
idx1{1,10} = [25, 17];
idx1{1,11} = [69, 36];
idx1{1,12} = [21, 50];
idx1{1,13} = [59, 17];
idx1{1,14} = [4, 17];
idx1{1,15} = [83, 19];
idx1{1,16} = [30, 81];


for i=1:length(idx1)
    id=idx1{1,i};
    for j=1:size(id,1)
        net(id(j,1),id(j,2))=1;
        net(id(j,2),id(j,1))=1;
    end
end

% 兴奋连接
idx2{1,1} = [5, 17];
idx2{1,2} = [6, 81];
idx2{1,3} = [20, 17];
idx2{1,4} = [2, 1];
idx2{1,5} = [16, 81];
idx2{1,6} = [22, 50];
idx2{1,7} = [10, 24];
idx2{1,8} = [15, 19];
idx2{1,9} = [33, 24];
idx2{1,10} = [84, 24];
idx2{1,11} = [14, 30];
idx2{1,12} = [86, 50];


for i=1:length(idx2)
    id=idx2{1,i};
    for j=1:size(id,1)
        net(id(j,1),id(j,2))=2;
        net(id(j,2),id(j,1))=2;
    end
end
X=net;
dlmwrite('EC_SMC.edge', X, 'precision', '%5f', 'delimiter', '\t')     % 将文件保存到ADNC.edge文件
