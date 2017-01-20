% 输入各收费亭中的车辆情况，以及车道占用情况，输出给车辆的指令
% 输出对于车辆的指令，包括：等待，开往x号车道,以及给出指令后的lanes变化
% 具体参数说明看主函数
function [cmd,lanes,tollBooths]=getAns(tollBooths,lanes)
    lengthT=length(tollBooths);
    lengthL=length(lanes);
    cmd=zeros(1,lengthT);
    %%从左边开始扫描，同一时刻，左边的车辆优先开，因为从分布图来讲，左边车离车道相对较近，有利于防止追尾之类
    %%其实影响不大，同一时刻同时完成收费的情况非常少
    for i=1:lengthT
        if tollBooths(i)==0
            continue;
        end
        
        for j=1:lengthL
            if lanes(j)==0
                tollBooths(i)=0;
                cmd(i)=j;
                lanes(j)=1;
                break;
            end
        end
    end
end