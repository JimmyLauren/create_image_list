function RGBsave2GRAY(input_imagegenpath, outputgenpath)
%UNTITLED 此处显示有关此函数的摘要
%   此程序为数据库创建标签文档，对于不同的数据库，改动处已在程序中标出
%% create train，val，test label txt
rootpath='C:\Users\iamji\Desktop\fer_dataset\SFEW\augmented_equal';%最好是反斜杠    %改动处1
rootpath1=strcat(rootpath,'/','train');  %改动处2
path1=dir(rootpath1);
length1=size(path1);
length1=length1(1);
for i=3:1:length1
    path2=strcat(rootpath1,'\',path1(i).name);
    path3=dir(path2);
    length2=size(path3);
    length2=length2(1);
    for j=3:1:length2
        img=path3(j).name;
        imgpath_relative=strcat('train','/',path1(i).name,'/',img); %%%%%%%改动处3
        
        % to test if there is that file
        kkk=strcat(rootpath,'/',imgpath_relative);
        imread(kkk);
        
        fid=fopen('train.txt','a');   %%%%%改动处4
        fprintf(fid,'%s',imgpath_relative);
        fprintf(fid,' ');
        fprintf(fid,'%d',i-3);
        fprintf(fid,'\n');
        fclose(fid);
    end
end
end

