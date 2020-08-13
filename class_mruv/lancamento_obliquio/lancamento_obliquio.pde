float t = 0; 

float vY = 55; // Velocidade Vertical
float g = -9.8; //gravidade/aceleração
float dY = 0; // deslocamento vertical

float vX = 53; //Velocidade horizontal 
float dX = 0; //deslocamento horizontal

float intervalo = 1.0/60; //escala

void settings(){
  size(600, 600);
}

void setup() {
  background(255); //Caso queira "limpar o rastro", transfira esse codigo para a primeira linha dentro do método draw()
}

void draw() {
  mostraMundo();
  
  dX = MRU(vX, t);
  dY = MRUV(vY, g, t);
  
  if(dY <= 0){
    posicaoInicial(); //retorna a bolinha para a posição inicial
    background(255); //Apaga o trajeto anterior 
  }else{
    ellipse(dX, 600-dY, 10, 10); //desenha o corpo na tela
  }  
  t = t + intervalo; //Aplicação da escala
}

//Calculo do deslocamento com base numa velocidade constante (MRU)
float MRU(float v, float t) {
  float d;
  d = v * t;
  return(d);
}

//Calculo do deslocamento com base numa velocidade variante (MRUV)
float MRUV(float v, float a, float t){
  float d;
  d = v * t + a * t * t / 2.0;
  return(d);
}

//Retorna as variaveis para os seus valores de inicialização;
void posicaoInicial(){
  t = 0;
  vY = 55; // Velocidade Vertical
  dY = 0; // deslocamento vertical
  dX = 0; //deslocamento horizontal
}

//Criação das linhas no fundo
void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600);
    line(0,i*50,600,i*50); 
  }
}
