local resultado = rolar("1d8"); 

if (resultado == 1) then
  	enviar("O personagem se desequilibra e, a sua escolha, perde o restante dos ataques ou a possibilidade de usar sua reação até seu próximo turno. Caso não tenha mais ataques, ele é obrigado a perder a reação. Caso não tenha mais reação, ele é obrigado a perder os demais ataques. Se não tiver nenhum dos dois, o efeito é meramente cosmético.");
  elseif (resultado == 2) then
  	enviar("O personagem perde sua base de apoio e terá desvantagem na sua próxima rolagem de D20.");
  elseif (resultado == 3) then
  	enviar("O personagem tropeça e gasta metade de seu movimento restante para evitar uma queda. Se não tiver mais movimento restante, ele cai e fica sob a condição derrubado até que se levante.");
  elseif (resultado == 4) then
  	enviar("O personagem deixa sua arma cair a 1,5 metro de distância. Caso ainda tenha uma ação de usar um objeto, ele pode usá-la para evitar a queda da arma, caso esteja em seu turno. A arma que cairá será uma que esteja em suas mãos. Caso não esteja carregando uma arma, mas outro tipo de objeto (uma poção, uma tocha, um pergaminho...), este é o objeto que cairá.");
  elseif (resultado == 5) then
  	enviar("O personagem abaixa sua guarda, dando vantagem ao próximo ataque feito contra si (até o seu próximo turno). Se ainda puder gastar uma ação bônus, ele pode usá-la para voltar a sua posição de defesa e não sofrer qualquer penalidade.");
  elseif (resultado == 6) then
  	enviar("O personagem acerta a si mesmo ou a um companheiro a 1,5 metros de distância, a sua escolha, causando 1d4 de dano do tipo cortante, perfurante ou concussão, conforme determinado pelo mestre.");
  elseif (resultado == 7) then
  	enviar("O personagem deixa cair, a sua escolha, um objeto que carrega, mas que não está nas suas mãos. Objetos vestidos como uma armadura não podem ser escolhidos, porém uma luva ou bota podem. O mestre tem a última palavra sobre se o objeto pode ou não ser escolhido. Caso ainda tenha uma ação de usar um objeto, ele pode usá-la para evitar a queda da arma, caso esteja em seu turno.");
  else 
    enviar("O personagem fica desnorteado e o próximo ataque que ele sofrer, até o seu próximo turno, se o acertar, será um crítico.");
  end;
