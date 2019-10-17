clear
clc
axis([0 100 0 100])
hold on
% Initially, the list of points is empty.
%%%%%%%%%%%%%产生reader的点数及位置
n = 0;
% Loop, picking up the points.
disp('Left mouse button picks points.')
disp('Right mouse button picks last point.')
reader = 1;
while reader == 1
    [rxi,ryi,reader] = ginput(1);
    plot(rxi,ryi,'kx')
    n = n+1;
    readerxy(:,n) = [rxi;ryi];
end
%%%%%%%%%%产生目标的真实轨迹
n=0;
but = 1;
while but == 1
    [xi,yi,but] = ginput(1);
    plot(xi,yi,'ro')
    n = n+1;
    xy(:,n) = [xi;yi];
end
% Interpolate with a spline curve and finer spacing.
t=1:n;
tss = 1: 0.1: n;
xyss = spline(t,xy,tss);
 hold on
% figure
% Plot the interpolated curve.
plot(xyss(1,:),xyss(2,:),'--');
%%%%%%%在真实轨迹上加入测量噪声
%%%%%得到测量数据
ap=4;r=3;
for i=1:length(readerxy(1,:))
    for j=1:length(xyss(1,:))
   d(i,j)=sqrt((xyss(:,j)-readerxy(:,i))'*(xyss(:,j)-readerxy(:,i))); 
   if rand(1)>exp(-d(i,j).^2/2/15/15);
       d(i,j)=NaN;
   end
   dmm(i,j)= d(i,j)+rand(1)*(0.2303*ap/r)*d(i,j);
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

 save RFIDmX readerxy xys ts d dm ap r
% save E:\jxb\MFile\RFIDtracking\RFIDm2 readerxy xys ts d dm ap r
% save E:\jxb\MFile\RFIDtracking\RFIDm10 readerxy xys ts d dm ap r
% % subplot(2,1,1),plot(ts,xys(1,:))
% % subplot(2,1,2),plot(ts,xys(2,:))
% length(xys(1,:))
% xyy=xys;tt=ts;
% for ii=1:length(xys(1,:))
% %      if rand(1)>=0.1
% %  if rand(1)>=1.1
% %               if rand(1)>=0.8
%             if rand(1)>=0.5
%           xyy(:,ii)=zeros(2,1);
%         tt(ii)=0;
%     end
% end
% 
%    aa=find(xyy(1,:)~=0);
%   
%       
% 
%   xxyy1=xyy(1,aa);
%    xxyy2=xyy(2,aa);
%   ttss=tt(aa);
%     
% figure
% subplot(2,1,1),plot(ttss,xxyy1)
% subplot(2,1,2),plot(ttss,xxyy2)
% length(xxyy1)

% save  mytarget2 xxyy1 xxyy2 ttss
% save  mytarget3 xxyy1 xxyy2 ttss
% save  mytarget4 xxyy1 xxyy2 ttss
% save  mytarget5 xxyy1 xxyy2 ttss
% save  mytarget6 xxyy1 xxyy2 ttss
% save  mytarget7 xxyy1 xxyy2 ttss
% save  mytarget8 xxyy1 xxyy2 ttss
