x1 = tf([1],[1 0]);
x2 = tf([1],[1 1]);
x3 = tf([1],[1 5]);
sys = x1*x2*x3;
bode(sys);
margin(sys);
grid on;
[Gm1,Pm1,Wgm1,Wpm1] = margin(sys);

y1 = 39.42/(3.077*tf('s'));
y2 = 39.42*0.7692*tf('s');
y3 = 39.42;
PID = y1+y2+y3;
G = PID*sys;
closedLoopSys = feedback(G,1)
bode(closedLoopSys)
margin(closedLoopSys)
grid on;
[Gm2,Pm2,Wgm2,Wpm2] = margin(closedLoopSys)