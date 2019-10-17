        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %                    RFID数据产生平台                         %
        %图像保存、关闭、数据显示、测量半径设置、自助更改坐标及标题名称     %                                                        
        %                      版本V1.0                                 %
        %                    2013年12月9号                              %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
        
function picprocess()
%% 创建显示的窗口，并移动到屏幕中间
clc;
clear;
hFigure = figure('Visible','on','Position',[0 0 600 500],'Resize','off',...
    'DockControls','off','Menubar','none','Name','数据产生器',...
    'NumberTitle', 'off','WindowButtonDownFcn',@btnDown,...
   'WindowButtonUpFcn',@btnUp,'CloseRequestFcn', @closeQuest);
movegui(hFigure,'center');
%% 创建显示的坐标轴，用于显示图片和绘制曲线
hAxes = axes('Visible','on','Position',[0.12 0.22 0.7 0.7],'Drawmode','fast');
axis([0 100 0 100]);

%%存储默认的测量半径
setappdata(hFigure,'R_Width',50);
axes_1 = {'RFID','x','y'};
setappdata(hFigure,'axes_1',axes_1);
%% 存储坐标范围，用于判断鼠标是否在图片上
setappdata(hFigure,'xLim',get(hAxes,'xLim'));
setappdata(hFigure,'yLim',get(hAxes,'yLim'));
%% 创建uicontrol对象
set(0,'DefaultUicontrolFontSize',13);  % 设置uicontrol空间的默认字体大小
uicontrol('String','开始','Position',[70 25 80 40],'Callback',@reader);  
% 开始产生数据
uicontrol('String','设置半径','Position',[510 185 80 40],'Callback',@Range);
%设置测量半径，确定范围
uicontrol('String','使用说明','Position',[510 250 80 40],'Callback',@Instructions);
%使用说明
uicontrol('String','保存图像','Position',[330 25 80 40],'Callback',{@savePic,hAxes});
%保存数据产生的图形
uicontrol('String','数据显示','Position',[200 25 80 40],'Callback',@get_data_xls);
%显示产生的数据
uicontrol('String','设置标注','Position',[510 120 80 40],'Callback',@change_tittle);
%设置主题
uicontrol('String','退出','Position',[460 25 80 40],'Callback','close(gcbf)');
%关闭窗口
%%创建x,y的UI控件
set(0,'DefaultuicontrolBackgroundColor',get(hFigure,'color'));
uicontrol('Style','text','string','x坐标','fontsize',16,'Position',[515 430 60 32]);

uicontrol('Style','text','string','y坐标','fontsize',16,'Position',[515 345 60 32]);

%% 显示窗口
set(hFigure,'Visible','on');

end




function Range(~,~)
prompt='设置测量半径：';
name='半径设置';
answer=inputdlg(prompt,name);

if ~isempty(answer)%或单击了【OK】按钮，更新测量半径
R_Width = floor(str2double(answer));%获取用户输入半径值，并取整
    if ~isnan(R_Width)&&R_Width>0&&R_Width<5000
        setappdata(gcf,'R_Width',R_Width);%更新半径
    end
end
end




function reader(~,~)
cla;
axes_1 =getappdata(gcf,'axes_1');
title(axes_1{1},'Fontname','Times New Roman');
xlabel(axes_1{2},'Fontname','Times New Roman');
ylabel(axes_1{3},'Fontname','Times New Roman');
set(get(gca,'xlabel'),'fontsize',13);
set(get(gca,'ylabel'),'fontsize',13);
set(get(gca,'title'),'fontsize',13);
delete data.xls;          %清空excel数据
delete truedata.xls;
delete RFIDdata.xls;
n = 0;
R_Width = getappdata(gcf,'R_Width');  %获取半径大小
reader = 1;
while reader == 1
    axis([0 100 0 100]);
    title(axes_1{1},'Fontname','Times New Roman');
    xlabel(axes_1{2},'Fontname','Times New Roman');
    ylabel(axes_1{3},'Fontname','Times New Roman');
    set(get(gca,'xlabel'),'fontsize',13);
    set(get(gca,'ylabel'),'fontsize',13);
    set(get(gca,'title'),'fontsize',13);
    [rxi,ryi,reader] = ginput(1);
    plot(rxi,ryi,'kx')
    hold on;
    n = n+1;
    readerxy(:,n) = [rxi;ryi];
    text(rxi,ryi,'');
    uicontrol('style','edit','enable','inactive','BackgroundColor',...
    'w','horizontal','right','position',[510 390 70 35],'string',...
    num2str(readerxy(1,n),6));
    uicontrol('style','edit','enable','inactive','BackgroundColor',...
    'w','horizontal','right','position',[510 305 70 35],'string',...
    num2str(readerxy(2,n),6));
    xlswrite('data.xls',readerxy);
        
        
end


X1 = [0:1:100];
X2 = [0:1:100];
[X,Y] = meshgrid(X1,X2);

 Z = zeros(size(X));

readerlocation=readerxy;%% RFID Readerde 位置
readermc=R_Width.*ones(size(readerxy(1,:)));%%%设定测量范围

for i=1:length(readermc)
    
 Z = Z+exp(-((X-readerlocation(1,i)).*(X-readerlocation(1,i))+...
     (Y-readerlocation(2,i)).*(Y-readerlocation(2,i)))/readermc(i));

end
[c,h]=contourf(X,Y,Z);
ch=get(h,'children');
% set(min(ch),'FaceColor','w','FaceAlpha',0.1)
%%%%%%%%%%产生目标的真实轨迹
n=0;
but = 1;
while but == 1
    [xi,yi,but] = ginput(1);
    plot(xi,yi,'ro')
    n = n+1;
    xy(:,n) = [xi;yi];
    uicontrol('style','edit','enable','inactive','BackgroundColor',...
      'w','horizontal','right','position',[510 390 70 35],'string',...
       num2str(xy(1,n),6));
    uicontrol('style','edit','enable','inactive','BackgroundColor',...
       'w','horizontal','right','position',[510 305 70 35],'string',...
    num2str(xy(2,n),6));
    xlswrite('truedata.xls',xy);
end
% Interpolate with a spline curve and finer spacing.
t=1:n;
tss = 1: 0.1: n;
xyss = spline(t,xy,tss);
plot(xyss(1,:),xyss(2,:),'--');
hold on
%%%%%%%在真实轨迹上加入测量噪声
%%%%%得到测量数据
ap=4;r=3;
for i=1:length(readerxy(1,:))
    for j=1:length(xyss(1,:))
   d(i,j)=sqrt((xyss(:,j)-readerxy(:,i))'*(xyss(:,j)-readerxy(:,i))); 
   if rand(1)>exp(-d(i,j).^2/2/15/15);%%% 理论上都能测量出目标到所有的阅读器的距离，
       d(i,j)=NaN;                    %%%%% 但有些没有被检测出来
   end
   dmm(i,j)= d(i,j)+randn(1)*(0.2303*ap/r)*d(i,j);
  
    end
end

ts=[];dm=[];xys=[];
for ii=1:length(tss);
    for jj=1:length(dmm(:,1));
        if isnan(dmm(jj,ii))
            
        else
            ts=[ts tss(ii)];
            dm=[dm dmm(:,ii)];
            xys=[xys xyss(:,ii)];
         
            break
        end
    end
end

plot(xys(1,:),xys(2,:),'k*');
xlswrite('RFIDdata.xls',xys);
 %for m=1:length(xys(1,:))
  %   for n=1:length(xys(:,1))
         
end
    
     
function btnUp(hObject,~)
%窗口的WindowButtonUpFcn回调函数
% % 鼠标释放时，更新标识变量ispressed的值为false
setappdata(hObject,'isPressed',false);
end

function Instructions(~,~)
f = figure('Color',[0.8,0.8,0.8],'Position',[960 350 385 330],...
    'NumberTitle','off','Name','数据发生器的使用说明');
set(f,'Toolbar','none','Menubar','none');
axis off;
text('string','1.单击“设置标注”按钮可以设置坐标轴和标题；',...
    'fontsize',13,'position',[-0.15 1]);
text('string','2.单击“设置半径”按钮可以设置测量范围；',...
    'fontsize',13,'position',[-0.15 0.89]);
text('string','3.单击“开始”按钮可以采集数据，其中，左键产',...
    'fontsize',13,'position',[-0.15 0.78]);
text('string','生数据，右键停止采集；继续按左键产生目标的',...
    'fontsize',13,'position',[-0.15 0.67]);
text('string','移动轨迹数值，右键结束；','fontsize',13,'position',...
    [-0.15 0.56]);
text('string','4.单击“显示数据”可以显示保存的采集数据时的',...
    'fontsize',13,'position',[-0.15 0.45]);
text('string','坐标值；','fontsize',13,'position',[-0.15 0.34]);
text('string','5.单击“保存”图像可以以.JPG和.BPM格式保存',...
    'fontsize',13,'position',[-0.15 0.23]);
text('string','图像；', 'fontsize',13,'position',[-0.15 0.12]);
text('string','6.单击“关闭”按钮则关闭数据产生平台，并清空；',...
    'fontsize',13,'position',[-0.15 0.01]);

end

function savePic(~,~,hAxes)
%保存按钮的回调函数
% % 采用稳健保存对话框，获取保存的图片路径和文件名
[fName,pName,index] = uiputfile({'*.jpg';'*.bmp'},'图片另存为');
if index == 1||index==2 %若保存文件类型为JPG或BMP
    % % 创建一个隐藏的窗口，将坐标轴复制进去，并保存为图片
    hFig=figure('Visible','off');%创建一个隐藏窗口
    copyobj(hAxes,hFig); %将坐标轴及其子对象复制到新窗口内
    str = [pName fName];%获取要保存的图片路径和文件名
    if index ==1
        print(hFig,'-djpeg',str);%保存为JPG图片
    else
        print(hFig,'-dbmp',str);%保存为bmp图片
    end
    delete(hFig); %删除创建的隐藏窗口
    % %创建一个信息对话框，提示文件保存成功
   hMsg = msgbox(['图片保存成功!'],'提示');
    % % 1秒后如果信息对话框没有关闭，自动关闭
    pause(1);
    if ishandle(hMsg)  %信息对话框没有手动关闭
        delete(hMsg);%自动关闭信息对话框
    end
end
end

function change_tittle(~,~)    
cla;
prompt={'设置标题名称：','设置横坐标名称：','设置纵坐标名称：'};
name='设置标注';
numlines=1;
defaultanswer={'RFID','x','y'};             %设置默认x,y,标题名称
answer1=inputdlg(prompt,name,numlines,defaultanswer);


if ~isempty(answer1)%或单击了【OK】按钮，更新测量半径
        title(answer1{1},'Fontname','Times New Roman');
        xlabel(answer1{2},'Fontname','Times New Roman');
        ylabel(answer1{3},'Fontname','Times New Roman');
        set(get(gca,'xlabel'),'fontsize',13);
        set(get(gca,'ylabel'),'fontsize',13);
        set(get(gca,'title'),'fontsize',13);
        axes_1= answer1;
        setappdata(gcf,'axes_1',axes_1);
end
end

function btnDown(hObject,~)
%窗口的WindowButtonDownFcn回调函数
%应用数据isPressed用来表征鼠标是否按下
%若鼠标在图片上按下，开始绘制曲线
% % 获取坐标轴范围和当前点坐标，判断鼠标当前是否在图片上
xLim = getappdata(hObject,'xLim');
yLim = getappdata(hObject,'yLim');
pos = get(gca,'CurrentPoint');
if(pos(1,1)>xLim(1))&&(pos(1,1)<xLim(2))&&(pos(1,2)>yLim(1))...
    &&(pos(1,2)<yLim(2))%若鼠标在图片上
    set(hObject,'Pointer','hand');%若鼠标变为手形
  
else
    set(hObject,'Pointer','arrow');%若鼠标变为默认值
     % % 获取鼠标当前点坐标，并村委用户数据
    

end
end


function get_data_xls(~,~)

f = figure('Color',[0.8,0.8,0.8],'Position',[300 300 500 405],...
    'NumberTitle','off','Name','data');
set(0,'DefaultuicontrolBackgroundColor',get(f,'color'));
uicontrol('Style','text','string','产生的数据','fontsize',13,...
    'Position',[38 375 100 25]);
uicontrol('Style','text','string','产生轨迹初始值','fontsize',13,....
    'Position',[38 258 150 25]);
uicontrol('Style','text','string','RFID测量的数据','fontsize',13,....
    'Position',[38 141 150 25]);
[~,~,raw] = xlsread('data.xls'); %读取Excel文件，变量名为~表示程序不使用该变量
 ColumnName = raw(1,:);          %获取列名
 data= raw(1:end,:);             %获取表格数据
for i = 1:numel(data)            %便利表格所有数据项，将NAN项替换为空格字符
    if isnan(data{i})
        data{i} ='';
    end
end

rnames = {'X','Y'};
uitable('Parent',f,'Data',data,'RowName',rnames,'Position',...
    [40 288 430 85],'Fontsize',10);  %创建表格

%  truedata   %

[~,~,raw] = xlsread('truedata.xls'); %读取Excel文件，变量名为~表示程序不使用该变量
ColumnName = raw(1,:);           %获取列名
data1 = raw(1:end,:);             %获取表格数据
for i = 1:numel(data1)            %便利表格所有数据项，将NAN项替换为空格字符
    if isnan(data1{i})
        data1{i} ='';
    end
end

rnames1 = {'X','Y'};
uitable('Parent',f,'Data',data1,'RowName',rnames1,'Position',...
    [40 171 430 85],'Fontsize',10);  %创建表格

% RFIDdata %
[~,~,raw] = xlsread('RFIDdata.xls'); %读取Excel文件，变量名为~表示程序不使用该变量
 ColumnName = raw(1,:);          %获取列名
 data2= raw(1:end,:);             %获取表格数据
for i = 1:numel(data2)            %便利表格所有数据项，将NAN项替换为空格字符
    if isnan(data2{i})
        data2{i} ='0';
    end
end

rnames = {'X','Y','X','Y','X','Y','X','Y','X','Y',};
uitable('Parent',f,'Data',data2,'RowName',rnames,'Position',...
    [40 14 430 125],'Fontsize',10);  %创建表格
end





function closeQuest(hObject,~)
%% 创建一个提问对话框，进一步确认是否要关闭窗口
sel = questdlg('确认退出当前窗口？','退出确认','Yes','No','No');
 switch sel
    case'Yes'  %用户单击了【Yes】按钮
        delete(hObject);
   case'No'  %用户单击了【No】按钮
      return;
 end
 clear all;
 close all;
 clc;
end

