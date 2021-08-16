## 欢迎来到北京工商大学“多传感器数据融合”研究生课程

课程网站 [Multisensor fusion on GitHub](https://github.com/Xue-boJin/Course-Multisensor-Fusion.git) 包含了这门课程的所有信息。

# 第一章的内容
## 本部分教程
![第1章 信息融合的概念](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/reference/ch1%20%E5%BA%8F%E8%A8%80.pdf)
## 本部分PPT
![第1章 信息融合技术简介PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/1.2-%E5%A4%9A%E4%BC%A0%E6%84%9F%E5%99%A8%E4%BF%A1%E6%81%AF%E8%9E%8D%E5%90%88%E6%8A%80%E6%9C%AF%EF%BC%8D%E6%B8%85%E6%99%B0%E7%89%88.pdf)
## 本部分导读
1. 信息融合的基本特点是什么？
2. 信息融合的方式有哪两类？请画图说明信息的流动关系？
3. 利用信息融合的思路，说明中医诊断的过程，并画出结构框图继续说明。
4. 你能举出利用多源信息融合的基本框架的感知系统吗？说明其原理，并给出初步的解决方案。
5. 信息融合系统中的多源信息是如何得到的？

开始啦！！ 
## 什么是信息融合
从广义上讲，多源信息融合无时不刻地存在于我们人类的生活、工作和学习当中，在战争中更是如此。战场上，指挥官都要融合各种各样的信息才能获得一场战争的胜利，从古代的战争到现在的战争都是如此。

信息融合的定义从广义上来讲是研究利用多个数据源更好地完成任务，这些任务包括在时间上和空间上能够更全面的利用数据信息，能够更高层次的归纳数据信息，获得我们想要知识，以达到我们的目的。多源信息融合系统有各种各样的数据，不同的数据可能会完成不同的任务。

从方法上来讲，我们通常把融合方式分为两类方法，一类是集中式的，一类是分布式的。因为传感器有各种各样不同的特点，融合各个传感器的优势来获得最终的一个更好的结果就显得非常必要了。

中医上讲的望、闻、问、切就是一个典型的信息融合过程，一个医生把病人的各种状况都采集下来，然后，有经验的老中医会把这些信息能够很好的融合在一起，给出更好的诊断结果。

## 信息融合技术简介
最早提出来信息融合技术的是美国军方提出来的。该定义是这样的：信息融合是对从单个和多个信息源获取的数据和信息进行关联相关和综合，以获得精确的位置和身份估计，以及对态势和威胁及其重要程度进行全面及时评估的信息。

信息融合技术从1973年年初提出来，以后经历了20世纪的80年代、90年代初和90年代末的三次研究热潮。从1973年美国国防部资助开发的声纳信号理解系统首次提出了数据融合的概念。1988年，美国国防部把数据融合列为90年代重点研究开发的20项关键技术之一。又过了三年之后，1991年美国就已经在这方面有了很多的研究成果，已经有54个融合系统引入到了军用电子系统中去。1995年，我国首次数据融合技术会议，有很多研究工作者，包括军方研究所和大学都有了很多这方面的研究。

## 大信息融合的概念与信息融合技术的关系
![两者的关系](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/res/ApplicationofFusion.png)
感觉到这两者不一样了吧！！希望课程能让你既可以应用信息融合的概念处理生活、学习中的事情，让自己更有智慧，又可以学会信息融合技术做一个IT精英！
% ## 本门课程的主要内容
% 以数据融合中的位置估计为主要内容，讲授基于RFID的室内跟踪仿真系统。

% 我们一起搭建一个基于MATLAB的仿真系统，界面就像这样的：
% ![RFID仿真系统界面](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/RFIDTrackingSystem.png)
# 第二章的内容
## 本部分教程
![第2章 数据源](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/reference/ch2%20%E6%95%B0%E6%8D%AE%E6%BA%90.pdf)
## 本部分PPT
![第2章 传感器数据的特点PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/1.3-%E4%BC%A0%E6%84%9F%E5%99%A8%E6%B5%8B%E9%87%8F%E6%95%B0%E6%8D%AE%E7%9A%84%E7%89%B9%E7%82%B9.pdf)

![第2章 数据预处理技术PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/2.1-%E6%95%B0%E6%8D%AE%E9%A2%84%E5%A4%84%E7%90%86%E6%8A%80%E6%9C%AF.pdf)
## 本部分导读
1. 传感器测量的不确定性有哪几种？如何克服它们？
2. 数据预处理技术中，那几个参数对结果会有影响？有何影响？
3. 思考一下，课堂上老师讲过的这个方法有哪些缺点？想想你还有哪些改进的好方法？
##  数据源的误差
接下来我们来谈一下传感器获得的数据源的问题。我们知道我们必须要通过一定的方式来采集多源信息融合。我们这门课程所研究的信息主要是来自于传感器，因此这一节我们先首先来讨论一下关于传感器的测量问题。

首先要说明的是传感器测量会有很大的不确定性，也就是说我们通过传感器获得的数据和真实的数据往往是有很大的偏差的。

那么这些传感器所获得的数据具有哪些不准确性呢？这些不准确性主要包括常值误差、漂移误差和测量噪声。常值误差指的是在测量的过程中，由于读数、或传感器本身的性能上存在的一个偏差，它会是一个常量，测量值始终是和真实值相差一个常量。 漂移误差是测量结果和真实值之间会产生一定的逐渐加大的偏差，有时是由于传感器的温度逐渐升高造成的。我们会发现这个偏差越来越大。

还有一种就是由于传感器本身的性能，以及周围的一些干扰，导致测量数据会含有噪声。传感器的这三种不同测量误差都需要我们消除或者了解。
![真实值和各种不确定性](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/MeasurementNoise.png)

真实值和各种不确定性，包括常值误差、漂移误差和测量噪声
![测量值](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/Measurement.png)

获得的测量值，它和真实值是多么的不一样呀！所以，有时传感器很不准，有木有？？

获得上述结果的见程序![含有测量偏差及噪声的测量数据模拟](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/MeasurementNoise.m)

通常情况下，我们的处理是将常值误差去掉获得更准确的值，这个过程我们一般把它叫做标定。漂移误差也要通过一定的标定的方式，比如说将传感器运行一段时间之后，然后获得这些漂移，再把它们从测量的数值中去掉。

对于测量噪声来讲，因为这是一个统计随机过程的统计量，所以说我们不能够把它去掉，但是我们需要知道这个噪声的统计特性，比如说它是否是高斯白噪声以及它的方差等等，利用这些信息在融合过程当中来考虑这些测量数据的不准确性，以获得更准确的融合结果。

既然传感器有点不靠谱，那么，我们使用多个传感器同时测量吧，尽量把不靠谱的数据给“挤兑”出去吧！！

试试看下面这个程序，看看有啥结果吧。

    measurements=[848.1,850.5,851.9,849.9,854.6,849.3,848.0,848.3]';
    covv=[25.73,23.81,24.95,25.75,35.65,21.33,23.94,22.96]';
    RealValue=850.5;
    RealCov=4.5025;
    for i=1:8
       for j=1:8
         d(i,j)=erf((measurements(j)-measurements(i))/(sqrt(2)*covv(i)))
       end
    End
    Threshold=0.4;
    R=(abs(d)-Threshold*ones(8))<0
    SupportNumber=5;
    support=(sum(R,2)>SupportNumber)
    FusionData=(support'*(measurements./covv)+RealValue/RealCov)/(support'*(1./covv)+1/RealCov)

%### 作业一：使用手机采集并分析运动数据
%#### 目的
%观察手机传感器的测量特性
%#### 内容
%1. 采集手机的IMU、GPS数据，观察手机在运动及静止时的数据的不同
%2. 设计计步算法，分析方法的准确及可靠性
%3. 撰写论文，说明所设计系统的方法、优势等
%4. 开发基于安卓/ios系统的手机APP
%#### 提示：获取数据方法
%1. 在手机上下载matlab的APP
%2. 在电脑matlab上需要安装MATLAB Support Package for Apple iOS Sensors或MATLAB Support Package for Android Sensors，
%3. 按照提示获取手机数据并分析，参见如下网页

%安卓系统的参考网页: https://ww2.mathworks.cn/help/matlabmobile_android/index.html

%苹果系统的参考网页: https://ww2.mathworks.cn/help/matlabmobile/index.html


### 练习1
利用MATLAB实现以下问题。
![课堂练习——获得模拟的测量数据](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/ClassWork1forKalmanFilter.png)


# 第三章的主要内容
## 本部分教程
![第3章 状态估计基础](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/reference/ch3%20%E7%8A%B6%E6%80%81%E4%BC%B0%E8%AE%A1%E5%9F%BA%E7%A1%80.pdf)
## 本部分PPT
![第3章 最小二乘PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/3.1-%E6%9C%80%E5%B0%8F%E4%BA%8C%E4%B9%98%E4%BC%B0%E8%AE%A1%E8%A7%A3%E8%AF%BB.pdf)

![第3章 最小二乘深入解读PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/3.2-%E6%9C%80%E5%B0%8F%E4%BA%8C%E4%B9%98%E6%B3%95%E6%B7%B1%E5%85%A5%E8%A7%A3%E6%9E%90.pdf)

![第3章 Kalman滤波器PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/3.2-kalman%E6%BB%A4%E6%B3%A2%E5%99%A8.pdf)

![第3章 Kalman滤波器深入研究PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/4.1-Kalman%E6%BB%A4%E6%B3%A2%E5%99%A8%E6%B7%B1%E5%85%A5%E7%A0%94%E7%A9%B6.pdf)
## 本部分导读
1. Kalman滤波器适用于线性系统还是非线性系统？
2. 系统模型包括哪两个？过程模型描述了哪些量的关系？测量模型描述了哪些量的关系？
3. 画出Kalman滤波器的流程图，包括初始值，以及预测和估计的递推环。
4. 稳态估计有什么好处？如何求得稳态的Kalman估计的增益？
5. 设<a href="http://www.codecogs.com/eqnedit.php?latex=\theta" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta" title="\theta" /></a>为待估计变量，已知该变量在实际应用中是一个恒值。设传感器的测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y=2\theta&plus;v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y=2\theta&plus;v" title="y=2\theta+v" /></a>，测量噪声<a href="http://www.codecogs.com/eqnedit.php?latex=v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?v" title="v" /></a>的方差为0.4的高斯白噪声，请设计Kalman滤波器，得到估计<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{\theta}" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{\theta}" title="\hat{\theta}" /></a>。
6. 如果我们发现该参数是变化的，变化规律为<a href="http://www.codecogs.com/eqnedit.php?latex=\theta(k&plus;1)=0.2*\theta(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta(k&plus;1)=0.2*\theta(k)" title="\theta(k+1)=0.2*\theta(k)" /></a>，测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y=2\theta&plus;v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y=2\theta&plus;v" title="y=2\theta+v" /></a>，测量噪声<a href="http://www.codecogs.com/eqnedit.php?latex=v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?v" title="v" /></a>的方差为0.4的高斯白噪声，请设计Kalman滤波器，得到估计<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{\theta}" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{\theta}" title="\hat{\theta}" /></a>。
7. 设为待估计变量为两个不变量<a href="http://www.codecogs.com/eqnedit.php?latex=\theta1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta1" title="\theta1" /></a>和<a href="http://www.codecogs.com/eqnedit.php?latex=\theta2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta2" title="\theta2" /></a>，已知传感器1的测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y1=\theta1&plus;v1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y1=\theta1&plus;v1" title="y1=\theta1+v1" /></a>，测量噪声<a href="http://www.codecogs.com/eqnedit.php?latex=v1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?v1" title="v1" /></a>的方差为0.3的高斯白噪声，传感器2的测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y2=\theta1&plus;\theta2&plus;v2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y2=\theta1&plus;\theta2&plus;v2" title="y2=\theta1+\theta2+v2" /></a>，测量噪声<a href="http://www.codecogs.com/eqnedit.php?latex=v2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?v2" title="v2" /></a>的方差为0.4的高斯白噪声，请问能否设计Kalman滤波器，仅利用1个传感器的信息（即仅利用传感器1或2的信息）得到估计<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{\theta}1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{\theta}1" title="\hat{\theta}1" /></a>和<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{{\theta}}2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{{\theta}}2" title="\hat{{\theta}}2" /></a>？
8. 某系统的过程模型为<a href="http://www.codecogs.com/eqnedit.php?latex=x(k&plus;1)=0.3x(k)&plus;w(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?x(k&plus;1)=0.3x(k)&plus;w(k)" title="x(k+1)=0.3x(k)+w(k)" /></a>，测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y(k)=3x(k)&plus;v(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y(k)=3x(k)&plus;v(k)" title="y(k)=3x(k)+v(k)" /></a>，其中过程噪声和测量噪声分别为方差为0.3、0.4的高斯白噪声，请设计Kalman滤波器，得到估计<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{x}(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{x}(k)" title="\hat{x}(k)" /></a>。
9. 试对第8题的系统设计稳态Kalman滤波器，求稳态增益。
## 最小二乘估计方法
看一下教程，先弄懂一下问题：

最小二乘法和平均有什么区别？

如果温度的变化满足一次曲线 ，状态方程的形式 是啥样子的？为啥要写成矩阵形式的状态方程？

PPT第4页上，（3.2a） 是如何包含所有测量值的？

推导一下最小二乘性能函数求极值的过程，获得估计参数 的计算方法。 

加权最小二乘方法和基本的最小二乘方法有何区别，如何取权值？

递推最小二乘方法和基本的最小二乘方法有何区别？看懂它的推导过程。

有了递推最小二乘方法的铺垫，我们就可以学习Kalman滤波器啦！
## Kalman 滤波器
本节讲Kaman滤波器的原理及应用，它是基于多传感器跟踪方法的基础。

它只有五个公式，但有人觉着它很难，因为这五个公式的关系挺复杂的。

关于Kalman滤波器是怎么来的，为什么在参数已知的条件下是最优的等相关问题，请参见![扩展阅读1](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/4.2-Kalman%E6%BB%A4%E6%B3%A2%E5%99%A8%E6%89%A9%E5%B1%95%E9%98%85%E8%AF%BB.pdf)

下面我们来讲怎么用，具体来讲，我们准备讲明白以下几点：

1. 这五个公式啥关系？

2. 给你![Matlab程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/kalmanfun.m)，来加深一下印象。

3. Kalman滤波器在使用时的一些小技巧。

### 1. 这五个公式啥关系？
![Kalman滤波器](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/KalmanFiler.png)


Kalman滤波器5个公式的关系
### 2. 给你Matlab程序，来加深一下印象。
    
    function [xe,pk,p1]=kalmanfun(A,C,Q,R,xe,z,p) 
    xe=A*xe; 
    p1=A*p*A'+Q; 
    K=p1*C'*inv(C*p1*C'+R); 
    xe=xe+K*(z-C*xe); 
    pk=(eye(size(p1))-K*C)*p1;  

### 3. Kalman滤波器在使用时的一些小技巧。
#### 稳态Kalman滤波器是啥？有什么用？
运行一下本文件夹中的![这个程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/C4_1.m)，感受一下Kalman滤波器是怎样快速收敛到稳态的。别忘了还需要下载它所需的![函数](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/steadycov.m)!!

 分析一下程序运行结果，说说估计的方差说明什么？方差越大说明什么？

### 练习2
利用MATLAB实现以下问题。
![kalman滤波器](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/CouseWork2forKalman.png)
如果你已经完成了问题1，那么就从第2个问题开始吧。



# 第四章的主要内容
## 注：本部分以自学为主，不作为考察内容。
## 本部分教程
![第四章 数据互联](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/reference/ch4%20%E6%95%B0%E6%8D%AE%E4%BA%92%E8%81%94.pdf)
## 本部分PPT
![第4章 数据互联PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/2.2-%E6%95%B0%E6%8D%AE%E4%BA%92%E8%81%94.pdf)
## 本部分导读
1. 数据互联要解决的根本问题是什么？
2. 为什么数据互联很重要？
3. 数据互联的难点在哪里？

这是数据互联的几种方法哦！我们只要知道它们的区别就可以，随着系统愈来愈复杂，这些方法也会被其他更好性能的方法所替代的。
![数据互联的经典方法](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/master/%E6%95%B0%E6%8D%AE%E4%BA%92%E8%81%94%E7%9A%84%E5%87%A0%E7%A7%8D%E6%96%B9%E6%B3%95.png)

在这个点上，我的梦想是希望传感器的性能变好，那么根本就不需要数据互联啦！



# 第五章的主要内容
%## 第一部分：融合估计方法
## 本部分教程
![第5章 多传感器融合估计方法](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/reference/ch5%20%E7%8A%B6%E6%80%81%E8%9E%8D%E5%90%88%E4%BC%B0%E8%AE%A1.pdf)
## 本部分PPT
![第5章 融合估计方法PPT](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/5.1-%E5%A4%9A%E4%BC%A0%E6%84%9F%E5%99%A8%E8%9E%8D%E5%90%88%E6%96%B9%E6%B3%95.pdf)
## 本部分导读
1. 多传感器系统的模型与单传感器有何区别？
2. 四种融合方法中哪两种性能是一样的？
3. 每种融合方法有什么优缺点？也就是有什么样的适用系统？能够针对不同的系统选择合适的融合方法、并给出理由。
4. 设<a href="http://www.codecogs.com/eqnedit.php?latex=\theta" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta" title="\theta" /></a>为待估计变量，已知该变量在实际应用中是一个恒值。使用两个传感器进行测量，测量模型分别为<a href="http://www.codecogs.com/eqnedit.php?latex=y1=0.6*\theta&space;&plus;v1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y1=0.6*\theta&space;&plus;v1" title="y1=0.6*\theta +v1" /></a>，<a href="http://www.codecogs.com/eqnedit.php?latex=y2=2*\theta&space;&plus;v2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y2=2*\theta&space;&plus;v2" title="y2=2*\theta +v2" /></a>，测量噪声为高斯白噪声，其测量方差分别为0.3，0.6，求增加传感器前后估计的方差是变大还是变小？为什么？
5. 如果第二次课的第5和第6题中都增加了一个传感器，测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y2=2*\theta&space;&plus;v2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y2=2*\theta&space;&plus;v2" title="y2=2*\theta +v2" /></a>，测量噪声为方差为0.6的高斯白噪声，设计融合估计方法，重新估计待估计量。

6. 设为待估计变量为两个不变量<a href="http://www.codecogs.com/eqnedit.php?latex=\theta1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta1" title="\theta1" /></a>和<a href="http://www.codecogs.com/eqnedit.php?latex=\theta2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\theta2" title="\theta2" /></a>，已知传感器的测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y=\theta1&plus;\theta2&plus;v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y=\theta1&plus;\theta2&plus;v" title="y=\theta1+\theta2+v" /></a>，测量噪声<a href="http://www.codecogs.com/eqnedit.php?latex=v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?v" title="v" /></a>的方差为0.4的高斯白噪声。假设又增加了一个传感器，其测量方程为<a href="http://www.codecogs.com/eqnedit.php?latex=y2=\theta2&plus;v2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y2=\theta2&plus;v2" title="y2=\theta2+v2" /></a>，测量噪声的方差为0.3。请设计Kalman滤波器，得到估计<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{\theta}1" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{\theta}1" title="\hat{\theta}1" /></a>和<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{{\theta}}2" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{{\theta}}2" title="\hat{{\theta}}2" /></a>。
7. 某系统的过程模型为<a href="http://www.codecogs.com/eqnedit.php?latex=x(k&plus;1)=0.3x(k)&plus;w(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?x(k&plus;1)=0.3x(k)&plus;w(k)" title="x(k+1)=0.3x(k)+w(k)" /></a>，过程噪声的方差为2，测量模型为<a href="http://www.codecogs.com/eqnedit.php?latex=y(k)=3x(k)&plus;v(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y(k)=3x(k)&plus;v(k)" title="y(k)=3x(k)+v(k)" /></a>，其中测量噪声<a href="http://www.codecogs.com/eqnedit.php?latex=v" target="_blank"><img src="http://latex.codecogs.com/gif.latex?v" title="v" /></a>的方差为0.4的高斯白噪声。假设又增加了一个传感器，其测量方程为<a href="http://www.codecogs.com/eqnedit.php?latex=y2(k)=3x(k)&plus;v2(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?y2(k)=3x(k)&plus;v2(k)" title="y2(k)=3x(k)+v2(k)" /></a>，测量噪声的方差为0.3。请设计Kalman滤波器，得到估计<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{x}(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{x}(k)" title="\hat{x}(k)" /></a>。

![多传感器系统模型](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/MultisensorSystem.png)

我们讲述四种不同的状态融合估计方法。
![四种融合方法](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/FourFusionMethods.png)
关于这四种融合方法的简要描述见![文档](https://github.com/Xue-boJin/data-fusion-for-indoor-tracking-by-RFID/blob/Lesson1/9-%E5%A4%9A%E4%BC%A0%E6%84%9F%E5%99%A8%E8%9E%8D%E5%90%88%E6%96%B9%E6%B3%95.pdf)，详细的扩展阅读参见![文档](https://github.com/Xue-boJin/data-fusion-for-indoor-tracking-by-RFID/blob/Lesson1/9-%E5%A4%9A%E4%BC%A0%E6%84%9F%E5%99%A8%E8%9E%8D%E5%90%88%E6%96%B9%E6%B3%95-%E6%89%A9%E5%B1%95%E9%98%85%E8%AF%BB.pdf)。

### 作业1
需要在练习1和练习2的基础上，完成以下作业的第3题。

假设有一个量满足如下游走模型

<a href="http://www.codecogs.com/eqnedit.php?latex=x(k+1)=0.7x(k)&plus;w(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?x(k+1)=0.7x(k)&plus;w(k)" title="x(k+1)=0.7x(k)+w(k)" /></a>


<a href="http://www.codecogs.com/eqnedit.php?w(k)\tilde{\&space;}(0,1)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?w(k)\tilde{\&space;}(0,1)" title="w(k)\tilde{\ }(0,1)" /></a>

1.	我们使用了一个传感器对其进行测量，测量模型为

<a href="http://www.codecogs.com/eqnedit.php?latex=\textcenter{{{z}_{1}}(k)=x(k)&plus;{{v}_{1}}(k)}" target="_blank"><img src="http://latex.codecogs.com/gif.latex?{{z}_{1}}(k)=x(k)&plus;{{v}_{1}}(k)" title="{{z}_{1}}(k)=x(k)+{{v}_{1}}(k)" /></a>

<a href="http://www.codecogs.com/eqnedit.php?latex={{v}_{1}}(k)\tilde{\&space;}(0,1)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?{{v}_{1}}(k)\tilde{\&space;}(0,1)" title="{{v}_{1}}(k)\tilde{\ }(0,1)" /></a>

编写程序，模拟传感器获得的测量数据。

2.	编写MATLAB程序，利用Kalman滤波器估计状态量<a href="http://www.codecogs.com/eqnedit.php?latex=\hat{x}(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?\hat{x}(k)" title="\hat{x}(k)" /></a>。

3.	假设我们在某一地点又安置了一个传感器，传感器的测量模型为

<a href="http://www.codecogs.com/eqnedit.php?latex={{z}_{2}}(k)=3x(k)&plus;{{v}_{2}}(k)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?{{z}_{2}}(k)=3x(k)&plus;{{v}_{2}}(k)" title="{{z}_{2}}(k)=3x(k)+{{v}_{2}}(k)" /></a>

<a href="http://www.codecogs.com/eqnedit.php?latex={{v}_{2}}(k)\tilde{\&space;}(0,3)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?{{v}_{2}}(k)\tilde{\&space;}(0,3)" title="{{v}_{2}}(k)\tilde{\ }(0,3)" /></a>

设计融合方法，使用两个传感器的数据得到状态估计，分析其估计性能与前面单传感器的差别。

要求：

利用MATLAB程序实现以下五种算法：

第一种：测量融合方法I

第二种：测量融合方法II

第三种：track to track 融合方法

第四种：分布式最优算法

第五种：协方差交互（CI）融合方法

上交压缩文档须包括：
1）论文，包括对各种融合方法的介绍，仿真数据的说明，仿真结果的图及性能比较表格等；
2）MATLAB程序。

注：计入大作业成绩，请同学们认真对待。

### 部分参考程序

用于产生模拟数据的程序见![参考程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/mydata.m)， 获得了![数据](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/myfusiondata.mat)。

第一种：测量融合方法I的函数，见![参考程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/MIfunction.m)。

第二种：测量融合方法II的函数，见![参考程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/MIIfunction.m)。

第三种：track to track 融合方法的函数，见![参考程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/TTfunction.m)。

第四种：分布式最优算法的函数，见![参考程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/DistributedFusionfunction.m)。
利用MATLAB程序实现这四种算法并进行比较，见![参考程序](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/code/showall.m)。



# 第六章的主要内容
## 本部分教程
![第6章 证据组合方法](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/reference/ch6%20%E8%AF%81%E6%8D%AE%E7%BB%84%E5%90%88%E6%8E%A8%E7%90%86.pdf)
## 本部分PPT
![第6章 证据组合方法之一：贝叶斯估计](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/7.1-%E8%B4%9D%E5%8F%B6%E6%96%AF%EF%BC%8D%E8%BA%AB%E4%BB%BD%E8%AF%86%E5%88%AB.pdf)
![第6章 证据组合方法之一：DS证据理论](https://github.com/Xue-boJin/Course-Multisensor-Fusion/blob/ppt/7.2%20%E8%AF%81%E6%8D%AE%E7%90%86%E8%AE%BA.pdf)

## 本部分导读



## 参考文献

[1] 金学波，![Kalman滤波器理论与应用——基于MATLAB实现](http://www.ecsponline.com/goods.php?id=177510)，科学出版社，2016，第2章、第4章
