# bandeiras_aula06
Na [**aula 05**](https://github.com/VaneskaSousa/exercicios-mami/tree/master/bandeiras_aula05) vimos como o móulo é importante para permitir a "responsividade" da bandeira, de forma que se você mudar uma variavel, irá conseguir adequar todo o restante. Já nesta aula, fomos convidados a aplicar o príncipio de dividir para conquistar (criando a função que desenha a bandeira). 

Junto a isso, fomos convidados a realizar a seguinte tarefa:

>"Crie uma aplicação que apresenta, centralizada em uma janela de 800 px x 600px, uma bandeira do Japão cuja largura é igual ao valor da variável interna mouseX do
Processing."

E para nos basear nas proporções, temos a seguinte imagem:
![]()

Podemos ver como deve ficar neste [vídeo](https://youtu.be/iYl-t2HzeM4).

## Variáveis:
* largura: Neste caso, será o valor da localização do mouse no eixo X, `mouseX`. 
* modulo: Responsável por manter a escala, vimos mais sobre ele na aula [passada](https://github.com/VaneskaSousa/exercicios-mami/tree/master/bandeiras_aula05)
* altura: Como observamos na imagem de referencia, a altura é composta por dois módulos. Por isso, será 2 vezes o a vaariável anterior. 
* xCentro: Como são três módulos pela metade: 1/2 x 3 módulos
* yCentro: Como podemos observar na imagem, o y corresponde a exatamente 1 modulo. 
* diametro: Diâmetro do círculo: 3/5 x 2 módulos;

E temos as principais para este exercício, as bordas X e Y! Para estas precisamos primeiro pensar em como calculamos o centro com os valores estabelecidos no enunciado da tarefa e nas imagens: 
Se a largura da bandeira é 300pxs e a largura da tela é 800pxs, logo o espaço "vazio" que eu vou ter no eixo X é de 500pxs. Se o centro seria o mesmo espaço vazio estar na direita e na esquerda, logo a minha borda é de 500/2, 250! 

Agora, se abstrairmos um pouquinho isso, e trabalhar com a *palavra reservada* `width`, que no processing nos retorna a largura da tela (estabelecida no `size()`) e em seguida trabalhar com `largura` ao invés de 300, logo temos uma equação que nos permite mudar o valor no site o quanto quiser que vai funcionar da mesma forma!

Para a altura, segui a mesma lógica, trocando apenas `width` por `height` e `largura` por `altura`! 

### No código:
Para entendermos melhor, veja como fica no código:

<pre>float modulo = largura / 3.0;
float altura = 2.0 * modulo;
float xCentro = 1.0 / 2 * 3 * modulo;
float yCentro = modulo;
float diametro = 3.0 / 5 * 2 * modulo;
float bordaX = (width - largura)/2;
float bordaY = (height - altura)/2;
</pre>

* E aqui cabe uma obervação de que as bordas serão somadas no eixo x e y de cada forma geometrica, afim de aplicar o espaçamento:
`rect(bordaX, bordaY, largura, altura);` e `ellipse(xCentro+bordaX, yCentro+bordaY, diametro, diametro);`

Para entender melhor, confira o código completo!
