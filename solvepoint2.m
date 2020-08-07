function [x2,y2]=solvepoint2(x1,y1,x3,y3)
    l1=4;l2=4;% 两条腿长
    l3=sqrt((x1-x3).*(x1-x3)+(y1-y3).*(y1-y3));% 肩部点和足端点距离
    theta3=acos((l2.*l2+l3.*l3-l1.*l1)/(2*l2.*l3));
    theta2=acos((l1.*l1+l2.*l2-l3.*l3)/(2*l1.*l2));
    if x1 > x3
        theta_need=theta2-(pi-atan((y1-y3)./(x1-x3))-theta3);
    elseif x1==x3
        theta_need=theta2-(pi/2-theta3);
    else
        theta_need=theta2-(atan((y1-y3)./(x3-x1))-theta3);
    end
    x2=x1-l1*cos(theta_need);
    y2=y1-l1*sin(theta_need);
end
