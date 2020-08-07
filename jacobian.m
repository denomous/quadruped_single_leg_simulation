function J = jacobian(theta0,theta1,theta2)
    %l0(shoulder length) l1(upper leg length) l2(lower leg length) 
    %theta0(shoulder angle) theta1(hip angle) theta2(knee angle)
    L0 = 0;
    L1 = 0.5;
    L2 = 0.5;
    
    s0 = sin(theta0);s1 = sin(theta1);s2 = sin(theta2);
    c0 = cos(theta0);c1 = cos(theta1);c2 = cos(theta2);
    s12 = sin(theta1+theta2);c12 = cos(theta1+theta2);
    
    x = L1*s1+L2*s12;
    y = s0*(L1*c1+L2*c12);
    z = -c0*(L1*c1+L2*c12);
    
    J = [0 L1*c1+L2*c12 L2*c12;
        c0*(L1*c1+L2*c12) -s0*(L1*s1+L2*s12) -s0*(L2*s12);
        s0*(L1*c1+L2*c12) c0*(L1*s1+L2*s12) c0*(L2*s12)];
end
