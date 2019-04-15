function Mifigurad1(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  stem x
%  Y1:  stem y

%  Auto-generated by MATLAB on 14-Apr-2019 01:20:50

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create stem
stem(X1,Y1,'Color',[1 0 0]);

% Create xlabel
xlabel('n');

% Create ylabel
ylabel('x[n]');

box(axes1,'on');
grid(axes1,'on');