# Battle City Assembly ICMC
Este projeto faz parte de um trabalho da disciplina Prática em Organização e Arquitetura de Computadores ministrada no ICMC-USP, em que fizemos um jogo fortemente inspirado pelo jogo 
Battle City (1985) em assembly para o [Processador do ICMC](https://github.com/simoesusp/Processador-ICMC). Além disso, no decorrer deste trabalho precisamos implementar a Unidade de Controle
do processador em VHDL.

  
## O Jogo
<p align="justify">
  O jogo é no formato de dois jogadores, onde o objetivo de cada um é destruir a águia (base) do outro jogador. Nesse sentido, na tela inicial, são apresentados o título do jogo (Battle City), os comandos dos jogadores (Jogador 1 se move no 'w' 'a' 's' 'd' e atira com o 'f' || Jogador 2 se move no 'i' 'j' 'k' 'l' e atira com 'h') e a opção de apertar espaço para iniciar a gameplay. A partir disso, os jogadores podem usufruir de estratégia própria para eliminar a águia do oponente, seja quebrando tijolos para cortar caminho, tentando matar o inimigo ou correndo direto para cumprir com o objetivo.
</p> 

<div align="center">
  <h3>Tela inicial</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/23234ef9-015f-403a-a50e-168adeedd8e4" alt="Tela inicial">
</div>

<div align="center">
  <h3>Tela inicial da partida</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/47430597-8658-491f-b8cf-7c361e9ef422" alt="Tela inicial da partida">
</div>

<div align="center">
  <h3>Tela do Jogador 2 quebrando a parede</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/a860cdb9-46e5-48c6-a95c-3dfede41ad41" alt="Tela do jogador 2 quebrando a parede">
</div>

<p align="justify">
  Porém não é só isso. Para intensificar a jogatina, o combate entre os tanques também apresenta uma importante característica que é o anulamento dos tiros, ou seja, se dois tiros se encontram em determinada situação, ambos são apagados, simbolizando um bloqueio, o que torna o confronto mais interessante, vencendo o jogador que conseguir atirar mais rápido.
</p>

<div align="center">
  <h3>Tela do confronto entre os tiros</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/8cd1acf8-bc66-402b-843a-e16023816397" alt="Tela do confronto entre os tiros">
</div>

<div align="center">
  <h3>Tela pós confronto entre os tiros</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/09e6c6e7-b2b1-4049-82b2-556961124d79" alt="Tela pós confronto entre os tiros">
</div>

<div align="justify">
  Após combates intensos e conquistas do mapa, os jogadores conseguem finalmente cumprir o objetivo final, que é destruir a águia do oponente. Isso pode acontecer de duas maneiras: atirando nela após quebrar a barreira de tijolos que a protege ou, se você é um jogador mais cruel e gostaria de causar certa humilhação ao seu oponente, pode também passar por cima dela e contar vitória desse mesmo player que executou tal ação. Ambas situações levam a uma tela de final do round onde mostra a vitória de um dos players com a opção de restart, apertando espaço para reiniciar o jogo.
</div>

<div align="center">
  <h3>Tela do Jogador 1 quebrando a parede de proteção da águia do Jogador 2</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/fa95499c-d501-4bae-bcca-9f1ccbd0205b" alt="Tela do jogador 1 quebrando a parede de proteção da águia do jogador 2">
</div>

<div align="center">
  <h3>Tela de Vitória</h3>
  <img src="https://github.com/GiordanoSL/Battle_City_asmICMC/assets/124844938/fefdb49b-e7b9-454f-81a9-28566f5aeba9" alt="Tela de vitória">
</div>

  E aí, pronto para a batalha? Boa sorte e que vença o melhor!

## Autores
* Bruno Basckeira Chinaglia
* Giordano Santorum Lorenzetto
* Felipe de Castro Azambuja
* Victor Moreli dos Santos
