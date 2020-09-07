# pong1 - Animação e Interação

Na remoto 09 da cadeira de matemática aplicada a multimídia nos foi introduzido a alguns princípios extremamente importantes, especialmente quando falamos de [jogos](https://www.youtube.com/watch?v=o0IStvZywB0&feature=youtu.be). Estes principios são:
* Interação;
* Animação;
* Detecção de colisão.

Nesta aula vamos nos concentrar nos dois primeiros pontos e apenas sermos introduzidos no conceito de colisão pois a proxima aula será voltada apenas para este ponto. 

## Mecânicas
Para melhor comprendermos, foi proposto que nos basearmos no jogo Pong e tentar construir suas mecânicas no processing em duas etapas:

1. Criar um bastão/plataforma que se move para cima ou para baixo de acordo com o usuário (através das setas cima e baixo) e o **movimento oscilatorio vertical** da bolinha:

![](https://github.com/VaneskaSousa/exercicios-mami/blob/master/pong1/resources-pong1/pong-vert-gif.gif)

Note que tem uma pegadinha ai, como eu calculei a margem para que a bolinha mude de direção no eixo X sentido a esquerda (aulas de física valendo a pena :smiley:) levando 
em consideração a largura da plataforma (20), a borda entre a plataforma e o limite de tela, alem de claro, o raio da circuferencia. 

> Como os valores aqui foram bem simples, para dar melhor a sensação de que a bolinha "bate" no bastão e volta, peguei a borda e subtraí por 10 (raio). Se você trabalhar com bastão maior ou uma bolinha maior, você terá que ajustar este calculo. 

E aqui aprendemos que para criar uma interação com o usuário, basta escolher qual atributo será mutavel e atribuir o valor da variavel de controle deste a ação do usuário. 
Neste caso o atributo foi a posicao do bastao e atribuimos o valor da variavel `bastaoY` (responsavel pela posição do bastao no eixo Y) ao usuario através de eventos (`keyPressed`).

2. Movimento oscilatorio da bolinha tanto na vertical quanto na horizontal, desconsiderando a posição do bastão/plataforma: 

![](https://github.com/VaneskaSousa/exercicios-mami/blob/master/pong1/resources-pong1/tarefa-mov-osc-2020-09-06-22-05.gif)

Aqui vamos ter o movimento real da bolinha do pong, onde dependendo de qual extremidade for a *colisão*, será alterada a direção. O principal ponto deste exercício é a **animação**.

Na animação, assim como na interação, escolhemos o atributo mutavel (posição da bolinha em ambos eixos) e a variavel responsável por ele (`bolaX`, `bolaY`, `dirBolaX` e `dirBolaY`) e atribuímos ao proprio algoritmo (neste caso, as mudanças nos frames - `frameRate()` ). 

> Foi muito legal trabalhar com posição neste caso pois lembrei dos conceitos de física que aprendi no ensino médio pois aqui pude observar que a posição é uma grandeza vetorial, que precisa de direção e sentido (em ambos os eixos)

Outro ponto: calculei o centro diretamente com o `width` e `height` dentro de `setup()`, de forma que independente do tamanho da tela, a bolinha sempre vai partir do centro :rocket:

## Paralelos com o lançamento obliquio 

De forma mais simples e mais centradas em traduzir o modelo matemático para o computacional, a atividade de construir um simulador de [lançamento obliquio](https://medium.com/@vaneskakaren15/simulando-mruv-mru-e-lan%C3%A7amento-obliquio-em-processing-java-b59a0911bb83) já nos introduziu a animação. 
Nele temos a variavel de tempo, que muda conforme o `frameRate()` e é fundamental para o conceito de simulador de tempo real, visto que a cada segundo tem-se o movimento. E é com a mudança da variavel de tempo, que resulta na mudança da posição (visto que a equação muda), gerando toda a animação. 

Acredito que foi bem mais fácil para mim construir estes exercícios justo por ter sofrido um pouco para entender muito bem as aulas sobre [MRU](https://medium.com/@vaneskakaren15/movimento-retil%C3%ADneo-uniforme-modelo-computacional-4f26a52ae01c) e [MRUV](https://medium.com/@vaneskakaren15/simulando-mruv-mru-e-lan%C3%A7amento-obliquio-em-processing-java-b59a0911bb83)
