function coord = forward_kinematics(theta0,theta1,theta2)
%肩关节中心为坐标原点
%坐标轴满足右手定则，x轴朝右，z轴朝上，逆时针为旋转正方向

%L0(shoulder length) L1(upper leg length) L2(lower leg length) 
%theta0(shoulder angle) theta1(hip angle) theta2(knee angle)

%     x = L1*sin(theta1)+L2*sin(theta1+theta2);
%     y = sin(theta0)*(L1*cos(theta1)+L2*cos(theta1+theta2));
%     z = -cos(theta0)*(L1*cos(theta1)+L2*cos(theta1+theta2));
    
    L0 = 0;
    L1 = 0.5;
    L2 = 0.5;
    
    s0 = sin(theta0);s1 = sin(theta1);s2 = sin(theta2);
    c0 = cos(theta0);c1 = cos(theta1);c2 = cos(theta2);
    s12 = sin(theta1+theta2);c12 = cos(theta1+theta2);
    
    x = L1*s1+L2*s12;
    y = s0*(L1*c1+L2*c12);
    z = -c0*(L1*c1+L2*c12);
    coord = [x,y,z];
end
