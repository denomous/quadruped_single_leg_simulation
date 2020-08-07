clear;

lamda = 0.5;%摆动周期占比
Ts = 1;%周期时间
xs = 0;%x轴起始点
xf = 30;%x轴终点
h = 20;%抬腿高度
zs = -50;%z轴起点

x=[];z=[];
x_last=0;z_last=0;t_last=0;

for t=0:0.01:Ts
    if(t>=0 && t<=lamda*Ts)
        sigma = 2*pi*t/(lamda*Ts);
        x_t = (xf-xs)*((sigma-sin(sigma))/(2*pi))+xs;
        %y_t = (yf-ys)*((sigma-sin(singma))/(2*pi))+ys;
        z_t = h*(1-cos(sigma))/2+zs;
        x = [x,x_t];
        z = [z,z_t];
    elseif(t>lamda*Ts && t<Ts)
        x_t = x_last-(x_last-xs)/((Ts-t)/(t-t_last));
        z_t = z_last;
        x = [x,x_t];
        z = [z,z_t];
    end
    x_last = x_t;
    z_last = z_t;
    t_last = t;
end

plot(x,z);