clear all
angulo1 = input('Ingresa el valor del angulo 1: ');
angulo2 = input('Ingresa el valor del angulo 2: ');
angulo3 = input('Ingresa el valor del angulo 3: ');
grid on
hold on 
h = linspace(pi/2, pi/2 + 180 * pi/ 180, 180);
j = linspace(-pi/2, 18 * pi / 180, 130);
R=[1,1,1];

figure

#Contraccion
for i = angulo1:-1:1
  P = [0; 0; 0; 1];
 
  M1 = [cos(h(i)), -sin(h(i)), 0, 10; 
        sin(h(i)), cos(h(i)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
  M2 = [cos(j(1)), -sin(j(1)), 0, 11; 
        sin(j(1)), cos(j(1)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
        
  M3 = [1, 0, 0, 12; 
        0, 1, 0, 0; 
        0, 0, 1, 0; 
        0, 0, 0, 1];
        
  M41 = [cos(h(40)), -sin(h(40)), 0, 10; 
        sin(h(50)), cos(h(10)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
  M5 = [cos(j(30)), -sin(j(40)), 0, 11; 
        sin(j(30)), cos(j(30)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
        
  M6 = [1, 0, 0, 12; 
        0, 1, 0, 0; 
        0, 0, 1, 0; 
        0, 0, 0, 1];
        
  A = M1*M2*P;
  B = M1*M2*M3*P;
  C = M41*M5*P;
  D = M41*M5*M6*P;
  X = [R(1), A(1), B(1)];
  Y = [R(2), A(2), B(2)];
  Z = [R(1), C(1), D(1)];

  grafica = plot3(X, Y, Z, 'r: *', 'linewidth', 4);
  hold on
  grid on
  pause(0.08);

  delete(grafica);
  
  axis([-8 45 -8 40])
end 

X1=X;
Y1=Y;
Z1=Z;

for i1 = 1:1:angulo2
  P = [0; 0; 0; 1];
 
  M1 = [cos(h(1)), -sin(h(1)), 0, 10; 
        sin(h(1)), cos(h(1)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
  M2 = [cos(j(i1+4)), -sin(j(i1+4)), 0, 11; 
        sin(j(i1+4)), cos(j(i1+4)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
        
  M3 = [1, 0, 0, 12; 
        0, 1, 0, 0; 
        0, 0, 1, 0; 
        0, 0, 0, 1];
        
  M41 = [cos(h(40)), -sin(h(40)), 0, 10; 
        sin(h(50)), cos(h(10)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
  M5 = [cos(j(30)), -sin(j(40)), 0, 11; 
        sin(j(30)), cos(j(30)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
        
  M6 = [1, 0, 0, 12; 
        0, 1, 0, 0; 
        0, 0, 1, 0; 
        0, 0, 0, 1];
        
  A = M1*M2*P;
  B = M1*M2*M3*P;
  C = M41*M5*P;
  D = M41*M5*M6*P;
  X1 = [R(1), A(1), B(1)];
  Y1 = [R(2), A(2), B(2)];
  Z1 = [R(1), C(1), D(1)];

  grafica = plot3(X1, Y1, Z1, 'r: *', 'linewidth', 4);
  hold on
  grid on
  pause(0.08);

  delete(grafica);
  
  axis([-8 45 -8 40])
end 

X2=X1;
Y2=Y1;
Z2=Z1;

for i = angulo3:-1:1
  P = [0; 0; 0; 1];
 
  M1 = [cos(h(1)), -sin(h(1)), 0, 10; 
        sin(h(1)), cos(h(1)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
  M2 = [cos(j(angulo2)), -sin(j(angulo2)), 0, 11; 
        sin(j(angulo2)), cos(j(angulo2)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
        
  M3 = [1, 0, 0, 12; 
        0, 1, 0, 0; 
        0, 0, 1, 0; 
        0, 0, 0, 1];
        
  M41 = [cos(h(i+i)), -sin(h(i)), 0, 10; 
        sin(h(i+i)), cos(h(i)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
  M5 = [cos(j(1)), -sin(j(1)), 0, 11; 
        sin(j(1)), cos(j(1)), 0, 0; 
        0, 0, 1, 0; 
        0, 0,0, 1];
        
  M6 = [1, 0, 0, 12; 
        0, 1, 0, 0; 
        0, 0, 1, 0; 
        0, 0, 0, 1];
        
  A = M1*M2*P;
  B = M1*M2*M3*P;
  C = M41*M5*P;
  D = M41*M5*M6*P;
  X2 = [R(1), A(1), B(1)];
  Y2 = [R(2), A(2), B(2)];
  Z2 = [R(1), C(1), D(1)];
  grafica2 = plot3(X2, Y2, Z2, 'r: *', 'linewidth', 4);

  hold on
  grid on
  pause(0.1);
  delete(grafica2);

end 
plot3(X2, Y2, Z2, 'r: *', 'linewidth', 4);

hold on
grid on