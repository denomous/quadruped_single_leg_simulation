function theta = inverse_kinematics(x,z)
%肩关节中心为坐标原点
%坐标轴满足右手定则，xz平面为旋转平面，逆时针为旋转正方向
L1=0.5;L2=0.5;
theta2 = pi-acos((L1*L1+L2*L2-x*x-z*z)/(2*L1*L2));
if(x>0)
    theta1 = abs(atan(x/z))-acos((x*x+z*z+L1*L1-L2*L2)/(2*sqrt(x*x+z*z)*L1));
elseif(x<0)
    theta1 = -abs(atan(x/z))-acos((x*x+z*z+L1*L1-L2*L2)/(2*sqrt(x*x+z*z)*L1));
else
    theta1 = -acos((x*x+z*z+L1*L1-L2*L2)/(2*sqrt(x*x+z*z)*L1));
end
theta = [theta1,theta2];
end