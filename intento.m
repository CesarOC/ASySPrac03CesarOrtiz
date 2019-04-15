t=-20:20;
n=[0 3 6 9 12 15 18 21];
%p=@(t) (t.*((t>=0) & (t<3))+((-t.*((t>=3) & (t<=6)))));
p=@(t) 3*triangularPulse(0,6,t) ;
x=p(t);
subplot(3,3,1)
stem(t,x,'fill')
grid on
title('x[n]')
 xlabel('n'); ylabel('x[n]');
 axis ([-10 10 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 x1=p(-t);
subplot(3,3,4)
stem(t,x1,'fill')
grid on
title('x[-n]')
 xlabel('n'); ylabel('x[-n]');
 axis ([-10 10 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 x2=p(t+6);
subplot(3,3,5)
stem(t,x2,'fill')
grid on
title('x[n+6]')
 xlabel('n'); ylabel('x[n+6]');
 axis ([-10 10 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 x3=p(t-6);
subplot(3,3,6)
stem(t,x3,'fill')
grid on
title('x[n-6]')
 xlabel('n'); ylabel('x[n-6]');
 axis ([-2 18 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 x4=p(3*t);
subplot(3,3,7)
stem(t,x4,'fill')
grid on
title('x[3n]')
 xlabel('n'); ylabel('x[3n]');
 axis ([-10 10 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 subplot(3,3,8)
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
 
 x6=p(3-t);
subplot(3,3,9)
stem(t,x6,'fill')
grid on
title('x[3-n]')
 xlabel('n'); ylabel('x[3-n]');
 axis ([-10 10 -10 10]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';