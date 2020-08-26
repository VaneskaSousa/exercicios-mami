/*obs¹: marcas = simbolo + logotipo
* obs²: Precisa serreprodutível; ou seja, deve adotar um padrão que permita sua cópia exata.
*
* Tarefa: Crie uma aplicação que, seguindo a risca o modelo definido por Schmittel, desenha na
* tela a letra “A” da marca da Braun, adotando um módulo de tamanho 50 px.
*
* Veja as imagens que deixei na pasta, seriam meus "rascunhos"
*/

//crio as variaveis
int modulo = 0; 
int raio = 0; 
int largMaior = 0;
int tamAMod = 0; 
int bordaV = 0;
int bordaH = 0;

void settings(){
  size(600,600); //Você pode colocar qualquer LARGURA que o A irá se adaptar (apartir de 800 você terá que aumentar a altura também)
}

void setup(){
  modulo = width/13; //width/13 é pq a largura da imagem de referencia é dividida por 13
  raio = modulo/4; //se você observar a imagem verar que a circuferencia corresponde a um modulo/4, e a grande a modulo * 2
  largMaior = modulo + raio; //também cheguei nessa conclusão observando a imagem. 
  tamAMod = 8; //tamanho do A em modulo. Para deixar ele do tamanho do tamanho das demais letras basta mudar para 6. Caso você queira um A maior, atente-se a altura da interface
  bordaV = (height - (tamAMod*modulo) + modulo)/2;
  bordaH = (width - (modulo + largMaior + modulo))/2; //esse calculo é baseado na imagem de referencia
  
  
  
   //println("Modulo: "+modulo +"\nraio = "+raio+"\nbordaV= "+ bordaV+"\nbordaH = "+bordaH+"\nlargMaior = "+largMaior);
   println("bordaV= "+ bordaV+"\nbordaH = "+bordaH + "\nModulo: "+modulo);
}

void draw(){
  background(255);
  desenhaA();
}

void desenhaA(){
  corpoA();
  arredondaA();
  detalhaA();
}

void corpoA(){
  noStroke();
  fill(0);
  //perna 01 do a
  rect(
    bordaH,
    bordaV,
    modulo,
    modulo * tamAMod
  );
  
  //quadrado do meio
  rect(
    bordaH + modulo,
    bordaV + (modulo * (tamAMod/2)),
    largMaior,
    modulo
  );
  //quadrado do meio de cima
  rect(
    bordaH + modulo,
    bordaV - modulo,
    largMaior,
    modulo
  );
  
  //perna 02 do a
  rect(
    bordaH + modulo + largMaior,
    bordaV,
    modulo,
    modulo * tamAMod
  );
}

void arredondaA(){
  noStroke();
  fill(0);
  //Se você observar na imagem, os circulos maiores possuem um modulo de raio
  ellipse( //elipse 01
    bordaH + modulo,
    bordaV,
    modulo*2,
    modulo*2 
  );
  
  ellipse( //elipse 02
    bordaH + modulo + largMaior,
    bordaV,
    modulo*2,
    modulo*2 
  );
  
  //Quadrado para esconder o restante da elipse
  fill(255);
  rect(
    bordaH + modulo,
    bordaV,
    largMaior,
    modulo
  );
}

void detalhaA(){
  //Quadrados que darão o detalhe arredondado interno, eles tem 1/2 do diametro dos circulos menores mostrado na imagem (1/2 do diametro, logo medem o raio)
  fill(0);
  noStroke();
  
  //quadrado 01
  rect(
    bordaH + modulo,
    bordaV,
    raio,
    raio 
  );
  //quadrado 02
  rect(
    (bordaH + modulo + largMaior) - raio,
    bordaV,
    raio,
    raio 
  );
  
  //ellipses para esconder restante dos quadrados
  fill(255);
  noStroke();
  ellipse(
    bordaH + modulo + raio,
    bordaV + raio,
    raio*2,
    raio*2 
  );
  ellipse(
    (bordaH + modulo + largMaior) - raio,
    bordaV + raio,
    raio*2,
    raio*2 
  );
}
