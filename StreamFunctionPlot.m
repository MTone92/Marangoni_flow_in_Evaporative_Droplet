set(groot,'DefaultAxesFontSize',30,'DefaultTextFontSize',30,...
    'DefaultAxesFontName','Time New Roman','DefaultTextFontName','Times New Roman',...
	'DefaultAxesFontWeight','bold','DefaultTextFontWeight','bold',...
	'DefaultLineLineWidth',3,'DefaultLineMarkerSize',16,...
    'DefaultFigureColor','w')

%% Start Plot
vmin = min(min(streamfunction));
vmax = max(max(streamfunction));
v1 = linspace(vmin,vmin/3,3);
v2 = linspace(0.25*vmax,vmax,5);
%v = [v1,-1*10^(-50),1*10^(-50),v2];
v = [v1,0,v2];
boundary = plot(r_1,z_1);
boundary.LineWidth = 3;
boundary.Color = 'yellow';
hold on;
[C,h] = contour(r,z,streamfunction,v);
%[C,h] = contour(r,z,streamfunction);
h.ShowText = 'on';
h.LabelSpacing = 3000;
h.LineWidth = 5;
%clabel(C,h,'fontsize',18);
%clabel(C,h,'FontWeight','bold');
set(gca,'FontName', 'Times New Roman','fontsize',30);

xlabel('r*','color','k','FontName', 'Times New Roman','fontsize',30);
ylabel('z*','color','k','FontName', 'Times New Roman','fontsize',30);
%{
title('Contour of \psi with \beta_{c}=\pi/6, s=1, p=0.7','color','k','fontsize',22);
%}
%%
% save('StreamFunction_b30_s1_p.mat')