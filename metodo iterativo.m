id1=input('\nIngrese el primer valor de la corriente del diodo: ');
vd1=input('Ingrese el primer valor del voltaje del diodo: ');
vt=input('Ingrese el voltaje de la temperatura: ');
prev=input('Ingrese el error que puede tener el voltaje del diodo, ejemplo 0.0001: ');
prei=input('Ingrese el error que puede tener la corriente del diodo, ejemplo 0.0001: ');
v1=(vd1+2.5)/2;
id2=(v1-vd1)/500;
vd2=vd1+2.3*vt*log10(id2/id1);
errorv=(vd2-vd1)/vd2;
errori=(id2-id1)/id2;
i=0;
while(abs(errorv)>=prev || abs(errori)>=prei)
    id1=id2;
    vd1=vd2;
    v1=(vd1+2.5)/2;
    id2=(v1-vd1)/500;
    vd2=vd1+(2.3*vt*log10(id2/id1));
    errorv=(vd2-vd1)/vd2;
    errori=(id2-id1)/id2;
    i=i+1;
end
fprintf(1,'\nLos valores arrojados son los siguientes:\nvoltaje diodo=%f\ncorriente diodo=%f\nSe realizaron %i iteraciones',vd2,id2,i)