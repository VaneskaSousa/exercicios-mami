# bandeiras-aula05
Com base no modulo, uma medida minima que irá estabelecer a ideia de escala. Sendo assim, se o modulo for alterado, todo os demais componentes da bandeira será alterado também. 
Estando do ciente do que é esta unidade basica, podemos então observar o exercício da aula 05: 

> "Demonstre o processo de criação de uma aplicação que apresenta uma bandeira da Suíça, seguindo suas proporções em lei, encaixada no canto superior esquerdo de uma janela de 
800 px x 600 px, a partir da definição de sua largura". 

Como bem observado, precisamos primeiro estar atentos as proporções. Ainda bem que o wikipidia nos fornece uma imagem bem simples que vai servir para nos orientar: 

![](https://github.com/VaneskaSousa/exercicios-mami/blob/master/bandeiras_aula05/bandeira-suica/bandera-suica-ref.jpeg).  

A partir da observação desta podemos seguir para a etapa mais importante: estabelecer as variávis e seus respectivos valores:

## Variávis:

* Modulo: Como valor padrão para o modulo, resolvi deixar como 100px, conforme vimos no exercício da aula. O importante mesmo é você compreender como o módulo é a menor figura geometrica que compõe nossa bandeira. Neste caso será dois tipos de quadrados, e ambos serão originados apartir deste modulo. 
* lado: Aqui vamos observar que cada lado do nosso quadrado é composto por 5 quadrados menores, ou seja, 5 modulos. Isto porque a primeira forma geometrica a ser construida é este quadrado de fundo e todas as outras formas irão vir com base nela. Por isso vamos multiplar 5 pelo módulo. Sendo assim, cada lado é formado 5modulos, independente de qual seja o valor deste.
* unidade: Se você observar a imagem, verá que o valor de cada lado é 32, logo independente da escala aplicada, o valor total do lado deve ser 32 e por isso dividimos lado por este valor.
* modSeis: Cmo você observou na imagem, cada valor se reduz 
* modSete:

* Modelo computacional das variaveis:
<pre>float modulo = 100.0;
float lado = 5.0*modulo;
float unidade = lado/32.0;
float modSeis = unidade * 6.0;
float modSete = unidade * 7.0;</pre>

## Montando o quebra-cabeça:

* Background: 
Para montar o retangulo do fundo é o mais simples: 
<pre>fill(#FFFFFF);
rect(0, 0, lado, lado);</pre>

Os dois primeiros zeros é justamente para começar do canto superior esquerdo :smile:

* Cruz
Você pode montar a cruz de diversas maneiras, tudo depende de como você interpreta a forma. Para mim, a cruz é composta por 4 quadrados ou então 2 retangulos, que se cruzam sob um ponto em comum. 
Para mim, este a segunda forma é mais facil. Sendo assim é só observar a imagem e montar! 

<pre>//Cruz retangulo vertical
  fill(#FF0000);
  noStroke();
  rect(
  modSeis+modSete, 
  modSeis, 
  modSeis, 
  (modSete*2)+modSeis);</pre>
  
  <pre>//Cruz retangulo horizontal (inversão do vertical)
  fill(#FF0000);
  noStroke();
  rect(
  modSeis, 
  modSeis+modSete, 
  (modSete*2)+modSeis, 
  modSeis);</pre>

Não esqueça de rodar o código para ver como que ficou no final! :rocket:
