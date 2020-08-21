# simple_sample

Na 3ª tarefa do curso, nos foi proposto o seguinte: 

>"diferenciar o uso das ferramentas tweak e debug, exemplificando, com o desenvolvimento de um código à sua escolha, como as mesmas podem facilitar a programação"

Dito isto, criei um exemplo super simples que constituí em um quadrado branco em uma tela preta, como você pode ver abaixo: 

![]()

E apartir disto vamos analisar as duas ferramentas de desenvolvimento. 

### Comparando
Tanto o tweak como o debug são modos de desenvolvimentp que vem para auxiliar os desenvolvedores a melhor ajustar e acompanhar, como uma espécie de  raio-x, na construção do algoritmo. Isso é muito útil pois na programação, como vimos no semestre passado, trabalhamos com abstrações e varíaveis, de forma que quanto mais aumenta a complexidade maior vai ser a dificuldade de prever o conteúdo de cada variável. 

## Tweak
O tweak é um modo do processing que permite ajustar os valores [hard-coded](https://www.guj.com.br/t/hard-code-x-hard-coded-x-hard-coding/12986) no código enquanto o sketch está rodando (você está vendo). 

Por exemplo, você está ajustando o posicionamentod e uma imagem na tela. Ao inves de fechar e abrir o simulador toda vez que você altera um dos valores, você pode habilitar este método e ajustar enquanto ver a simulação.

Para selecionar este modo basta ir em *sketch -> tweak*

![]()

> Observe que os números estão sublinhados e ao lado das cores aparece uma caixinha com a cor corresponde aquele valor RGB ou hexadecimal. Se você clicar em cima do número e arrastar para direita ou para esquerda irá diminuir ou aumentar, respectivamente. 

Aqui vai algumas observações
* Funciona apenas com valores hard-codded em parametros;
* Funciona com cores;
* A precisão do valr muda;
* Ao desativar o modo tweak você escolhe se quer aplicar as alterações (mudar o escopo) ou não.

## Debug
O modo debug já é bem mais conhecido, ele é extremamente útil quando você está trabalhando com muitas variaveis e é essencial quando você está trabalhando com banco de dados. 

Este modo permite que o desenvolvedor acompanhe cada estado da sua aplicação desde valor das variaveis até as proprias configurações como width, height e interações do usuário no momento da execução da linha em questão como mouseX, mouseY e etc. 

![]()


Para selecionar este modo você deve:
1. Vá clique em *Debug -> enable debbug* e então abrir uma outra tela. 
1. Clicar duas vezes no número da linha que você deseja acompanhar. Feito isso, o numero será substituído por um simbolo semelhante a <>.
1. Vá em *Debug -> continue* e então você irá notar que os valores vão mudando a cada etapa. Observe a coluna onde fica os numeros, lá você verá em qual linha corresponde aqueles valores!

## Conclusão

Ambos os modos são extramente úteis, tudo depende da necessidade do desenvolvedor. o Tweak é extremamente útil na construção da interface do usuário, por exemplo, enquanto o debug pode ser mais vantajoso para o backend podendo vir a salvar vidas quando você não consegue identificar onde está o bug. 

##Referências
* [Tweak mode](http://galsasson.com/tweakmode/)
* [Debug mode](https://debug.martinleopold.com/)
