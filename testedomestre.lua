jogador = myPlayer

if jogador.isMestre then
   escrever("O jogador é mestre na mesa");
else
   escrever("não é mestre");
   return;
end;

if confirmYesNo("Você revelou a dificuldade do teste?") then
  dificuldade = tonumber (inputQuery("Qual a dificuldade?"));
  enviar("Teste com dificuldade " .. dificuldade);
else
  enviar("Sem dificuldade revelada");
  dificuldade = false
end;

personagem = chooseCharacter("Qual personagem fará o teste?", "pc")
node = getCharacterSheet(personagem);

local indice, texto = choose("Defina o teste", {"Força", "Destreza", "Constituição", "Inteligência", "Sabedoria", "Carisma"});

enviar(node.nome .. " fará o teste de " .. texto);

if indice == 1 and node.resistencias.forca == true  then
                 enviar("O personagem possui proficiência em força, seu modificador é: " .. node.resistencias.bonusforca);
                 rolada = "1d20" .. "+" ..  (node.resistencias.bonusforca)
                 resultado = rolar(rolada, "Força + Proficiência");
elseif indice == 1 and node.resistencias.forca ~= true then
  	enviar("Modificador de Força do personagem é " .. node.atributos.modforca);
              rolada = "1d20" .. "+" ..  (node.atributos.modforca)
              resultado = rolar(rolada, "Força"); 


elseif indice == 2 and node.resistencias.destreza == true  then
                 enviar("O personagem possui proficiência em destreza, seu modificador é: " .. node.resistencias.bonusdestreza);
                 rolada = "1d20" .. "+" ..  (node.resistencias.bonusdestreza)
                 resultado = rolar(rolada, "Destreza + Proficiência");
elseif indice == 2 and node.resistencias.destreza ~= true then
  	enviar("Modificador de destreza do personagem é " .. node.atributos.modforca);
              rolada = "1d20" .. "+" ..  (node.atributos.moddestreza)
              resultado = rolar(rolada, "Destreza"); 


elseif indice == 3 and node.resistencias.constituicao == true  then
                 enviar("O personagem possui proficiência em constituição, seu modificador é: " .. node.resistencias.bonusconstituicao);
                 rolada = "1d20" .. "+" ..  (node.resistencias.bonusconstituicao)
                 resultado = rolar(rolada, "Constituição + Proficiência");
elseif indice == 3 and node.resistencias.constituicao ~= true then
  	enviar("Modificador de constituição do personagem é " .. node.atributos.modconstituicao);
              rolada = "1d20" .. "+" ..  (node.atributos.modconstituicao)
              resultado = rolar(rolada, "Constituição"); 


elseif indice == 4 and node.resistencias.inteligencia == true  then
                 enviar("O personagem possui proficiência em inteligência, seu modificador é: " .. node.resistencias.bonusinteligencia);
                 rolada = "1d20" .. "+" ..  (node.resistencias.bonusinteligencia)
                 resultado = rolar(rolada, "Inteligência + Proficiência");
elseif indice == 4 and node.resistencias.inteligencia ~= true then
  	enviar("Modificador de inteligência do personagem é " .. node.atributos.modinteligencia);
              rolada = "1d20" .. "+" ..  (node.atributos.modinteligencia)
              resultado = rolar(rolada, "Inteligência"); 


elseif indice == 5 and node.resistencias.sabedoria == true  then
                 enviar("O personagem possui proficiência em sabedoria, seu modificador é: " .. node.resistencias.bonussabedoria);
                 rolada = "1d20" .. "+" ..  (node.resistencias.bonussabedoria)
                 resultado = rolar(rolada, "Sabedoria + Proficiência");
elseif indice == 5 and node.resistencias.sabedoria ~= true then
  	enviar("Modificador de sabedoria do personagem é " .. node.atributos.modsabedoria);
              rolada = "1d20" .. "+" ..  (node.atributos.modsabedoria)
              resultado = rolar(rolada, "Sabedoria"); 

elseif indice == 6 and node.resistencias.carisma == true  then
                 enviar("O personagem possui proficiência em carisma, seu modificador é: " .. node.resistencias.bonuscarisma);
                 rolada = "1d20" .. "+" ..  (node.resistencias.bonuscarisma)
                 resultado = rolar(rolada, "Carisma + Proficiência");
elseif indice == 6 and node.resistencias.carisma ~= true then
  	enviar("Modificador de carisma do personagem é " .. node.atributos.modcarisma);
              rolada = "1d20" .. "+" ..  (node.atributos.modcarisma)
              resultado = rolar(rolada, "Carisma"); 
end;

if dificuldade == false then
 enviar("O mestre dirá o que fazer a partir daqui...");
elseif resultado >= dificuldade then
 enviar("passou");
else
 enviar("não passou");
end;
