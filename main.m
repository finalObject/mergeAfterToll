% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年1月20日 15:17:00
clear;clc;
% 输入已经检查完毕的车辆所在收费亭，车道占用情况（某量车已经出发开往该车道，并没有超过安全距离）
% 输出对于车辆的指令，包括：等待，开往x号车道
% etc亭数量，etc车道数量,其他收费亭数量，其他车道数量
numOfEtcB=1;numOfEtcL=1;
numOfTollbooths=8-numOfEtcB;
numOfLanes=4-numOfEtcL;
% 收费亭中有无车辆，有待输入
tollBooths=zeros(1,numOfTollbooths);
%%输入，不规范
tollBooths=[1,1,0,1,0,0,1];
% 对于收费亭中车辆的指令，无车或者等待为0，开往x车道为x
cmd=zeros(1,numOfTollbooths);
% 车道占用情况，1代表被占用，0代表未被占用
lanes=zeros(1,numOfLanes);
lanes=[1,1,0];
tollBooths
lanes
[cmd,lanes,tollBooths]=getAns(tollBooths,lanes);
cmd
tollBooths
lanes




