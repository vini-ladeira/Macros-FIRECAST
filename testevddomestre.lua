jogador = myPlayer

if jogador.isMestre then
   escrever("O jogador é mestre na mesa");
else
   escrever("não é mestre");
   return;
end;

local indice, texto = choose("Rolar o teste na vantagem ou desvantagem?", {"Vantagem", "Desvantagem"});
enviar("O teste rolará com " .. texto);

if confirmYesNo("O teste teve a dificuldade revelada pelo mestre?") then
  dificuldade = tonumber (inputQuery("Qual a dificuldade?"));
  enviar("Teste com dificuldade " .. dificuldade);
else
  enviar("Sem dificuldade revelada");
  dificuldade = false
end;

personagem = chooseCharacter("Qual personagem fará o teste?", "pc")
node = getCharacterSheet(personagem);

dado1 = rolar("1d20", "Dado 1"); 
dado2 = rolar("1d20", "Dado 2"); 

if dado1 >= dado2 and indice == 1 then
        enviar("Vantagem, Dado 1 é maior, o resultado é: " .. dado1);
        dado = dado1
elseif dado1 >= dado2 and indice == 2 then
        enviar("Desvantagem, Dado 1 é maior, o resultado é: " .. dado2);
        dado = dado2
elseif dado1 <= dado2 and indice == 1 then
        enviar("Vantagem, Dado 2 é maior, o resultado é: " .. dado2);
        dado = dado2
elseif dado1 <= dado2 and indice == 2 then
        enviar("Desvantagem, Dado 2 é maior, o resultado é: " .. dado1);
        dado = dado1
end;

local indice, texto = choose("Defina o teste", {"Força", "Destreza", "Constituição", "Inteligência", "Sabedoria", "Carisma"});

enviar(node.nome .. " fará o teste de " .. texto);

if indice == 1 and node.resistencias.forca == true  then
                 enviar("Você possui proficiência em força, seu modificador é: " .. node.resistencias.bonusforca);
                 resultado = dado + (node.resistencias.bonusforca)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 1 and node.resistencias.forca ~= true then
  	enviar("seu modificador de Força é " .. node.atributos.modforca);
              resultado = dado + (node.atributos.modforca)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 2 and node.resistencias.destreza == true  then
                 enviar("Você possui proficiência em destreza, seu modificador é: " .. node.resistencias.bonusdestreza);
                 resultado = dado + (node.resistencias.bonusdestreza)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 2 and node.resistencias.destreza ~= true then
  	enviar("seu modificador de destreza é " .. node.atributos.modforca);
              resultado = dado + (node.atributos.moddestreza)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 3 and node.resistencias.constituicao == true  then
                 enviar("Você possui proficiência em constituição, seu modificador é: " .. node.resistencias.bonusconstituicao);
                 resultado = dado + (node.resistencias.bonusconstituicao)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 3 and node.resistencias.constituicao ~= true then
  	enviar("seu modificador de constituição é " .. node.atributos.modconstituicao);
              resultado = dado + (node.atributos.modconstituicao)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 4 and node.resistencias.inteligencia == true  then
                 enviar("Você possui proficiência em inteligência, seu modificador é: " .. node.resistencias.bonusinteligencia);
                 resultado = dado + (node.resistencias.bonusinteligencia)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 4 and node.resistencias.inteligencia ~= true then
  	enviar("seu modificador de inteligência é " .. node.atributos.modinteligencia);
              resultado = dado + (node.atributos.modinteligencia)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 5 and node.resistencias.sabedoria == true  then
                 enviar("Você possui proficiência em sabedoria, seu modificador é: " .. node.resistencias.bonussabedoria);
                 resultado = dado + (node.resistencias.bonussabedoria)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 5 and node.resistencias.sabedoria ~= true then
  	enviar("seu modificador de sabedoria é " .. node.atributos.modsabedoria);
              resultado = dado + (node.atributos.modsabedoria)
              enviar("o resultado do seu teste é " .. resultado)

elseif indice == 6 and node.resistencias.carisma == true  then
                 enviar("Você possui proficiência em carisma, seu modificador é: " .. node.resistencias.bonuscarisma);
                 resultado = dado + (node.resistencias.bonuscarisma)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 6 and node.resistencias.carisma ~= true then
  	enviar("seu modificador de carisma é " .. node.atributos.modcarisma);
              resultado = dado + (node.atributos.modcarisma)
              enviar("o resultado do seu teste é " .. resultado)
end;

if dificuldade == false then
 enviar("Pergunte ao mestre o que fazer");
elseif resultado >= dificuldade then
 enviar("passou");
else
 enviar("não passou");
end;
