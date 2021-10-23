local resultado = rolar("1d100"); 

if (resultado <=10) then
  	enviar("O personagem se sente obrigado a repetir uma atividade específica de novo e de novo, como lavar as mãos, tocar em coisas, rezar ou contar moedas.");
 elseif (resultado <= 20 and resultado >=11) then
  	enviar("O personagem experimenta uma alucinação vívida e tem desvantagem em testes de habilidade.");
 elseif (resultado <= 30 and resultado >=21) then
  	enviar("O personagem sofre de paranoia extrema. Ele tem desvantagem em testes de Sabedoria e Carisma.");
 elseif (resultado <= 40 and resultado >=31) then
  	enviar("O personagem considera algo (geralmente a fonte de sua loucura) intensamente repulsivo, como se tivesse sido afetado pelo efeito de antipatia da magia antipatia/simpatia.");
  elseif (resultado <= 45 and resultado >=41) then
  	enviar("O personagem experimenta uma alucinação poderosa. Escolha uma poção. O personagem imagina estar sob efeito dela.");
  elseif (resultado <= 55 and resultado >=46) then
  	enviar("O personagem fica ligado a um talismã da sorte, como uma pessoa ou objeto e tem desvantagem nas jogadas de ataque, testes de habilidade e testes de resistência enquanto estiver a mais de 9 metros dele.");
  elseif (resultado <= 65 and resultado >=56) then
  	enviar("O personagem fica cego (25%) ou surdo (75%).");
  elseif (resultado <= 75 and resultado >=66) then
  	enviar("O personagem experimenta tremores e tiques incontroláveis, que impõem desvantagem em jogadas de ataque, testes de habilidade e testes de resistência que envolvam Força ou Destreza.");
  elseif (resultado <= 85 and resultado >=76) then
  	enviar("O personagem sofre de amnesia parcial. Ele sabem quem ele é e mantem seus traços raciais e características de classe, mas não reconhece outras pessoas ou lembra de qualquer coisa que tenha acontecido antes da loucura afeta-lo.");
   elseif (resultado <= 90 and resultado >=86) then
  	enviar("Sempre que o personagem sofrer dano, ele deve ser bem sucedido num teste de resistência de Sabedoria CD 15 ou será afetado como se tivesse fracassado no teste de resistência contra a magia confusão. O efeito de confusão dura por 1 minuto.");
   elseif (resultado <= 95 and resultado >=91) then
  	enviar("O personagem perde a capacidade de falar.");
else 
    enviar("O personagem cai inconsciente. Nenhuma quantidade de empurrões ou dano conseguem acorda-lo.");
  end;
