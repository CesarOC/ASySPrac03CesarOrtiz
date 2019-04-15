%x[-n]
x=[-6 -5 -4 -3 -2 -1 0];
X=[0 1 2 3 2 1 0];
subplot(3,2,1);
nx=(-6:1:0);
ny=(0:1:3);
stem(nx,X);
xlabel('x[-n]')
grid on
title('Inciso a')

%x[n+6]
x=[-12 -11 -10 -9 -8 -7 -6];
X=[0 1 2 3 2 1 0];
subplot(3,2,2);
nx=(-6:1:0);
ny=(0:1:3);
stem(nx,X);
xlabel('x[n+6]')
grid on
title('Inciso b')

%x[n-6]
x=[6 7 8 9 10 11 12];
X=[0 1 2 3 2 1 0];
subplot(3,2,3);
nx=(6:1:12);
ny=(0:1:3);
stem(nx,X);
xlabel('x[n-6]')
grid on
title('Inciso c')

%x[3n]
%la gráfica
x=[0 1 2 ];
X=[0 3 0];
subplot(3,2,4);
nx=(0:1:2);
ny=(0:1:40);
stem(nx,X);
xlabel('x[3n]')
grid on 
title('Inciso d')

%x[n/3]//Se debe expandir horizontal
%x=[0 3 6 9 12 15 18];
%X=[0 9 18 27 -30 -39 0];%segun yo esa serian las alturas

%nx=(0:3:18);
%ny=(0:1:1);
%stem(nx,X);
%xlabel('x[n/3]')
%grid on 
t=-20:20;
n=[0 3 6 9 12 15 18 21];
%p=@(t) (t.*((t>=0) & (t<3))+((-t.*((t>=3) & (t<=6)))));
p=@(t) 3*triangularPulse(0,6,t) ;
x=p(t);
subplot(3,2,5);
 x5_1=p((1/3)*t);
 stem(t,x5_1,'r','fill')
 hold on
 x5=p((1/3)*n);
stem(n,x5,'b','fill')
grid on
title('x[n/3]')
 xlabel('n'); ylabel('x[n/3]');
 axis ([-2 18 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 title('Inciso e')
 

%x[3-n]
x=[-3 -2 -1 -0 1 2 3];
X=[0 1 2 3 2 1 0];
subplot(3,2,6);
nx=(-3:1:3);
ny=(0:1:3);
stem(nx,X);
xlabel('x[3-n]')
grid on
title('Inciso f')
