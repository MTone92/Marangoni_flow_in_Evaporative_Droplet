% This program is used to combine the Marangoni flow and the evaperation
% flow.
% Note that the characteristic Stream Function for evaporation and
% Marangoni flow is Psi_{eva}=R^2*J0/rho, and Psi_{Ma}=R^2*Dsigma/mu.
% The absolute humidity of vapor in air (kg of vapor/kg of air) can be
% expressed as: w = 0.662*P_{vapor}/(P_{total}-P_{vapor}).

load('StreamFunction_b30_s1000_p0.0_t450.mat');
load('UniformEvaporation_b30_t200.mat');
% Parameters for evaporation characteristic velocity calculation:
%{
P_vapor = 2.339;        % Saturated vapor pressure under Temp = 20C.
P_total = 101.353;      % Atmospheric pressure at sea level.
w = 0.662*P_vapor/(P_total-P_vapor);
%}
Temp = 295.65;          % Temperature by Kelvin
w = 14.62*10^(-3);      % This is absolute humidity under Temp = 20C.
Humidity_infty = 0.1;     % This is the relative humidity at far field.
D = 22.5*10^(-6)*(Temp/273.15)^1.8; % Binary diffusion coefficient of vapor in air.
rho_air = 1.1940;       % Density of vapor-air mixture under Temp = 20C (kg/m^3).
rho_water = 998.2;      % Density of water (kg/m^3).
R_0 = 1*10^(-3);        % Radius of the droplet (m).
V_evp = rho_air*D*w*(1-Humidity_infty)/(rho_water*R_0);
% Parameters for Marangoni flow characteristic velocity calculation:
Dsigma = 5*10^(-3);     % Maximum surface tension difference (N/m).
mu = 5;                 % Dynamic viscosity of water (Pa*s).
V_Ma = Dsigma/mu;

% Calculation the combined streamfunction:
ratio = mu*rho_air*D*w*(1-Humidity_infty)/(Dsigma*rho_water*R_0);
streamfunction = streamfunction + ratio*streamfun;
