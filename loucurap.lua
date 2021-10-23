local resultado = rolar("1d100"); 

if (resultado <=15) then
  	enviar("Estar bêbado me mantem são.");
 elseif (resultado <= 25 and resultado >=16) then
  	enviar("Eu guardo tudo que encontro.");
 elseif (resultado <= 30 and resultado >=26) then
  	enviar("Eu tento me parecer mais com alguém que conheço – adotando seu estilo de roupa, maneirismos e nome.");
  elseif (resultado <= 35 and resultado >=31) then
  	enviar("Eu devo distorcer a verdade, exagerar ou mentir abertamente para ser interessante para outras pessoas.");
  elseif (resultado <= 45 and resultado >=36) then
  	enviar("Alcançar meus objetivos é a única coisa que me importa, e eu vou ignorar todo o resto para perseguir isso.");
  elseif (resultado <= 50 and resultado >=46) then
  	enviar("Eu acho difícil me importar com qualquer coisa que esteja ao meu redor.");
  elseif (resultado <= 55 and resultado >=51) then
  	enviar("Eu não gosto da forma como as pessoas me julgam o tempo todo.");
  elseif (resultado <= 70 and resultado >=56) then
  	enviar("Eu sou o mais esperto, sábio, forte, rápido e belo de todas as pessoas que conheço.");
   elseif (resultado <= 80 and resultado >=71) then
  	enviar("Eu estou convencido que inimigos poderosos estão me caçando e seus agentes estão em todo canto. Eu tenho certeza que estão me observando o tempo todo.");
   elseif (resultado <= 85 and resultado >=81) then
  	enviar("Só existe uma pessoa em quem posso confiar. E apenas eu posso ver esse amigo especial.");
   elseif (resultado <= 95 and resultado >=86) then
  	enviar("Eu não consigo levar nada a sério. Quanto mais séria a situação, mais engraçada eu a considero.");
else 
    enviar("Eu descobri que eu realmente adoro matar pessoas.");
  end;
