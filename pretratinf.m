
[data,time] = thingSpeakRead(90866,'Fields',2,'NumPoints',8000);% obtengo los datos del precio del dolar en mi canal de TS , 8mil puntos que es lo maximo que deja
%Preparacion de datos 
%Remuevo NaN
q=isnan(data);  % isnan me da un vector de valores logicos en donde 1 hay NaN en el vector
data(q)=[];     % busco las posiciones en los vectores  de datos y tiempo y los borro
time(q)=[];

% pongo el tiempo en el formato adecuado
time=datenum(time);
% Creo el objeto de series de tiempo
dolar = fints(time, data);



   
    
    
    


    


