local resultado = rolar("1d100"); 

if (resultado <=20) then
  	enviar("O personagem se retrai em sua mente, ficando paralisado. O efeito termina se o personagem sofrer qualquer dano.");
 elseif (resultado <= 30 and resultado >=21) then
  	enviar("O personagem fica incapacitado e passa seu turno gritando, rindo ou chorando.");
 elseif (resultado <= 40 and resultado >=31) then
  	enviar("O personagem fica amedrontado e deve usar sua ação para se mover a cada rodada para fugir da fonte do medo.");
  elseif (resultado <= 50 and resultado >=41) then
  	enviar("O personagem começa a balbuciar e fica incapaz de falar ou conjurar normalmente.");
  elseif (resultado <= 60 and resultado >=51) then
  	enviar("O personagem deve usar sua ação a cada rodada para atacar a criatura mais próxima.");
  elseif (resultado <= 70 and resultado >=61) then
  	enviar("O personagem experimenta alucinações vívidas e tem desvantagem em testes de habilidade.");
  elseif (resultado <= 75 and resultado >=71) then
  	enviar("O personagem faz o que qualquer um mandar ele fazer que não seja obviamente suicida.");
  elseif (resultado <= 80 and resultado >=76) then
  	enviar("O personagem experimenta uma vontade avassaladora de comer coisas estranhas como terra, limo ou restos.");
   elseif (resultado <= 90 and resultado >=81) then
  	enviar("O personagem fica atordoado.");
else 
    enviar("O personagem cai inconsciente.");
  end;
