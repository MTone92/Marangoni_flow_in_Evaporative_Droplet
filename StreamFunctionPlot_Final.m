set(groot,'DefaultAxesFontSize',30,'DefaultTextFontSize',30,...
    'DefaultAxesFontName','Time New Roman','DefaultTextFontName','Times New Roman',...
	'DefaultAxesFontWeight','bold','DefaultTextFontWeight','bold',...
	'DefaultLineLineWidth',3,'DefaultLineMarkerSize',16,...
    'DefaultFigureColor','w')

%% Start Plot
boundary = plot(r_1,z_1);
boundary.LineWidth = 3;
boundary.Color = 'yellow';
hold on;
[C,h] = contour(r,z,streamfunction,v);
h.LineWidth = 5;
h.ShowText = 'on';
h.LabelSpacing = 3000;

%set(gca,'ytick',[]);
set(gca,'FontName', 'Times New Roman','fontsize',30);
set(gca,'Box','off');

xlabel('r*','color','k','FontName', 'Times New Roman','fontsize',40);
ylabel('z*','color','k','FontName', 'Times New Roman','fontsize',40);
%{
title('Contour of \psi with \beta_{c}=\pi/6, s=1, p=0.7','color','k','fontsize',22);
%}
%%
% save('StreamFunction_b30_s1_p.mat')