function fowradkinametic=  func(T1,T2,T3,T4)
d1=336; a2=500; a3=145; a4=174;

T01=[cos(T1),0,sin(T1),0;
    sin(T1),0,-sin(T1),0;
    0,1,0,d1;
    0,0,0,1];

T12=[cos(T2),-sin(T2),0,a2*cos(T2);
    sin(T2),cos(T2),0,a2*sin(T2);
    0,0,1,0;
    0,0,0,1];
    
T23=[cos(T3),-sin(T3),0,a3*cos(T3);
    sin(T3),cos(T3),0,a3*sin(T3);
    0,0,1,0;
    0,0,0,1];
    
T34=[cos(T4),-sin(T4),0,a4*cos(T4);
    sin(T4),cos(T4),0,a4*sin(T4);
    0,0,1,0;
    0,0,0,1];

T04=((T01*T12)*T23)*T34;
X=T04(1,4)
Y=T04(2,4)
Z=T04(3,4)
    end