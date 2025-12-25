clear all;
close all;
clc;
% Initial parameter
Tc = 0.5
Ts = 1/100
T = 10
t = 0 : Ts : T;
% h kontinu
h = tf([1], [Tc, 1])
% H diskret
H = tf([0, Ts], [Tc+Ts, -Tc], Ts)
% Plot step input
t1 = 0 : 1/100 : T;
x = heaviside(t1);
x(1) = 0;
plot(t1, x, 'LineWidth', 2); hold on;
% Plot step respon h-kontinu
y1 = step(h, t); 
plot(t, y1, 'r', 'LineWidth', 2); hold on;
% Plot step respon H-diskret
y2 = step(H, t);
plot(t, y2, 'b-.', 'LineWidth', 2); hold off;

title('Perbandingan Sistem Kontinu dan Diskret');
xlabel('t (waktu)');
ylabel('Amplitudo');
xlim([-1, 10]);
figure; bode(h, H);
title('Bode Plot Kontinu dan Diskret');
legend({'Input', 'Kontinu', 'Diskret'});