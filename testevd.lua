local indice, texto = choose("Rolar o teste na vantagem ou desvantagem?", {"Vantagem", "Desvantagem"});
enviar("O teste rolará com " .. texto);

if confirmYesNo("O teste teve a dificuldade revelada pelo mestre?") then
  dificuldade = tonumber (inputQuery("Qual a dificuldade?"));
  enviar("Teste com dificuldade " .. dificuldade);
else
  enviar("Sem dificuldade revelada");
  dificuldade = false
end;

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

if indice == 1 and sheet.resistencias.forca == true  then
                 enviar("Você possui proficiência em força, seu modificador é: " .. sheet.resistencias.bonusforca);
                 resultado = dado + (sheet.resistencias.bonusforca)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 1 and sheet.resistencias.forca ~= true then
  	enviar("seu modificador de Força é " .. sheet.atributos.modforca);
              resultado = dado + (sheet.atributos.modforca)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 2 and sheet.resistencias.destreza == true  then
                 enviar("Você possui proficiência em destreza, seu modificador é: " .. sheet.resistencias.bonusdestreza);
                 resultado = dado + (sheet.resistencias.bonusdestreza)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 2 and sheet.resistencias.destreza ~= true then
  	enviar("seu modificador de destreza é " .. sheet.atributos.modforca);
              resultado = dado + (sheet.atributos.moddestreza)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 3 and sheet.resistencias.constituicao == true  then
                 enviar("Você possui proficiência em constituição, seu modificador é: " .. sheet.resistencias.bonusconstituicao);
                 resultado = dado + (sheet.resistencias.bonusconstituicao)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 3 and sheet.resistencias.constituicao ~= true then
  	enviar("seu modificador de constituição é " .. sheet.atributos.modconstituicao);
              resultado = dado + (sheet.atributos.modconstituicao)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 4 and sheet.resistencias.inteligencia == true  then
                 enviar("Você possui proficiência em inteligência, seu modificador é: " .. sheet.resistencias.bonusinteligencia);
                 resultado = dado + (sheet.resistencias.bonusinteligencia)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 4 and sheet.resistencias.inteligencia ~= true then
  	enviar("seu modificador de inteligência é " .. sheet.atributos.modinteligencia);
              resultado = dado + (sheet.atributos.modinteligencia)
              enviar("o resultado do seu teste é " .. resultado)


elseif indice == 5 and sheet.resistencias.sabedoria == true  then
                 enviar("Você possui proficiência em sabedoria, seu modificador é: " .. sheet.resistencias.bonussabedoria);
                 resultado = dado + (sheet.resistencias.bonussabedoria)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 5 and sheet.resistencias.sabedoria ~= true then
  	enviar("seu modificador de sabedoria é " .. sheet.atributos.modsabedoria);
              resultado = dado + (sheet.atributos.modsabedoria)
              enviar("o resultado do seu teste é " .. resultado)

elseif indice == 6 and sheet.resistencias.carisma == true  then
                 enviar("Você possui proficiência em carisma, seu modificador é: " .. sheet.resistencias.bonuscarisma);
                 resultado = dado + (sheet.resistencias.bonuscarisma)
                 enviar("o resultado do seu teste é " .. resultado)
elseif indice == 6 and sheet.resistencias.carisma ~= true then
  	enviar("seu modificador de carisma é " .. sheet.atributos.modcarisma);
              resultado = dado + (sheet.atributos.modcarisma)
              enviar("o resultado do seu teste é " .. resultado)
end;

if dificuldade == false then
 enviar("Pergunte ao mestre o que fazer");
elseif resultado >= dificuldade then
 enviar("passou");
else
 enviar("não passou");
end;
