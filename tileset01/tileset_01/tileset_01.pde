PImage backg1, bloco1, bloco2,bloco3; //declara as PImages que serão utilizadas (armazena na memoria)

/*int[][] mundo = { 
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
  {3, 3, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 2},
  {0, 0, 0, 0, 0, 0, 2, 2},
  {0, 0, 0, 0, 0, 2, 2, 2},
  {1, 1, 0, 1, 0, 1, 1, 1},
  {1, 1, 0, 1, 0, 1, 1, 1} 
};*/

void settings(){
  size(256, 256);
}
void setup(){
  //Associa o arquivo a imagem atraves do caminho
  backg1 = loadImage("data\\tileset\\backg-1.png");  
  /*bloco1 = loadImage("data\\tileset\\bloco1.png");
  bloco2 = loadImage("data\\tileset\\bloco2.png");
  bloco3 = loadImage("data\\tileset\\bloco3.png");
  mostraBackground();*/
  
  int numBlocos = width/32; //(32 é a largura de backg1)
  
  for(int i = 0; i <= numBlocos; i++){
    image(backg1, i*32, 32);  
  }
}

/*void mostraBackground(){
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      switch(mundo[j][i]){
        case 0:
          image(backg1, i*32, j*32); //posiciona as imagens
          break;
        case 1:
          image(bloco1, i*32, j*32);
          break;
        case 2:
          image(bloco2, i*32, j*32);
          break;
        case 3:
          image(bloco3, i*32, j*32);
          break;
        default:  
          print("deu ruim");
          break;
      }
    }
  }
}*/
