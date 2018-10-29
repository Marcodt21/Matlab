m=dlmread('C:\Users\Usuario\Documents\Marco\Electro I\Diodostarea1.dlm');
v1=(m(:,1)+2.5)/2;
id=(v1-m(:,1))/500;
plot(m(:,1),m(:,2));
title('Metodo Grafico')
xlabel('Vd')
ylabel('Id')
grid on
hold
plot(m(:,1),id);