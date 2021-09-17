clc
clear all
close all

format long
%ro = 7800;
ro = 940; % Polymer 
n = 1;
L = 1e-1; % L = 10cm = 100mm
d = L/10;
A = (pi*d^2)/4;
%E = 210 * 10^9;
E = 3e3; % Polymer 
la = (2*n-1)*(pi/(2*L))
% Coefficients:
syms x 
phi = sqrt(2/(ro*A*L))*cos(la*x)
B = double(int((ro*A)*phi^2,x,0,L))
C = double(int((E*A)*phi*diff(phi,x,4),x,0,L))
D = double(int(phi,x,0,L))
% total of five cases: Cl., NL (ea2), SG, NLSG-h, NLSG-s; 
ea0 = 0;
el0 = 0;
ea = 0.01;
%el = .05 ;
el = el0;
wCT = sqrt((E*la^2*(1+(el^2)*(la^2)))/(ro*(1+(ea0^2)*(la^2))))
fCT = wCT * (360/(2*pi))
GCT = B*(1+(ea0^2)*(ro/E)*(wCT^2));
HCT = B*wCT^2;
SimulationTime = 10;
c = 0;
Kp = 5;
Ki = 1.5;
%Ki  =0;
Kd = 3;
%Kp = 0;
%Kp = 9*10^12;
%Ki = 03.3*10^17;
%Kd = 5.5*10^7;

sim('RPIDC') 

figure(1)
plot(sc1(:, 1), sc1(:, 2), 'b' , 'LineWidth' , 2)
grid on 
legend({'CT'}, 'FontSize', 14)
set(gca , 'FontSize' , 14)
xlabel('time (sec)', 'FontSize', 16)
ylabel('Vibration Amplitude', 'FontSize', 16)
hold off







