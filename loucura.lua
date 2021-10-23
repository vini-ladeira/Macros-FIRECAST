local indice, texto = choose("Qual o tipo de loucura?", {"Curta Duração", "Longa Duração", "Permanente"});


if indice == 1 then
  	enviar("Curta Duração");
              invoke("loucuracd");
 elseif indice == 2 then
  	enviar("Longa Duração");
              invoke("loucurald");
else 
    enviar("Permanente");
    invoke("loucurap");
  end;
