function subirdolar(~,~)%comentario desde github y matlab :D
web = 'https://www.superfinanciera.gov.co/jsp/index.jsf'
web2 =0;
captura = getTableFromWeb_mod(web,2)
regex = '[^$].[0-9].[0-9].[0-9]*'
dolar = captura(2,2)
dolar2 = regexprep(dolar,'[,]','.')
dolar3 = regexprep(dolar2,'[a-zA-Z$]','')
dolar4 = num2str(cell2mat(dolar3))
dolar5 = regexprep(dolar4,'[.]','')
dolar6 = str2num(dolar5)
dolar7 = dolar6/100
thingSpeakWrite(xxxxx, dolar7, 'WriteKey','xxxxxxxxxxx');
end
