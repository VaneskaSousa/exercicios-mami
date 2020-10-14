PImage imgOriginal;
PImage imgNova = createImage(320, 240, RGB);

void settings(){
  size(640, 240);
}
void setup() {
  imgOriginal = loadImage("original.png");
  background(0);
  text("Use as setas para mudar o efeito e espaço para ''apagar'' a tela.", 10, height/2);
  println("Ta com um bugzinho precisa clicar duas vezes para poder ir pro efeito certo. Ta acontecendo isso porque eu não 'zero' o rgb da imgNova\n"+
          "E sinceramente, so qero terminar o jogo haha\nObrigada pela compreenção");
  //chuviscaImagem(8);
  
}

void draw(){
}

void keyPressed(){
   if (key == CODED) {
     switch(keyCode){
       case UP:
         background(255);
         addImages();
         thresholdImagem();
         break;
       case DOWN:
         background(255);
         addImages();
         erodeImagem();
        break;
       case LEFT:
        background(255);
        addImages();
        cinzentaImagem();
        break;
      case RIGHT:
        background(255);
        addImages();
        inverteImagem();
        break;
     }
  }else{
    background(255);
  }
}

void addImages(){
  image(imgOriginal, 0, 0);
  image(imgNova, width/2, 0);
}

void erodeImagem(){
  /* 
  * Baseado na explicação do artigo https://blog.ostermiller.org/efficiently-implementing-dilate-and-erode-image-functions/
  */
  color corOriginal;
  float r,g,b;
  double threshold = 0;
    for (int x = 0; x < width/2; x++) {
      for (int y = 0; y < height; y++) {
        corOriginal = imgOriginal.get(x, y);
        r = red(corOriginal);
        g = green(corOriginal);
        b = blue(corOriginal);
        threshold = 0.299*r + 0.587*g + 0.114*b;
        if (threshold >= 180){
          color cor = color (r,g,b);
          imgNova.set(x, y, cor); //pelo que eu entendi a implementação é basicamente a mesma do threshold mas onde era branco fica com a cor original
        }else{
          imgNova.set(x, y, 0);
        }
    }
  }
}

void thresholdImagem(){
  /* 
  * Baseado na implementação do Java https://introcs.cs.princeton.edu/java/31datatype/Threshold.java.html e https://introcs.cs.princeton.edu/java/31datatype/Luminance.java.html
  */
  color corOriginal;
  float r,g,b;
  double threshold = 0;
    for (int x = 0; x < width/2; x++) {
      for (int y = 0; y < 240; y++) {
        corOriginal = imgOriginal.get(x, y);
        r = red(corOriginal);
        g = green(corOriginal);
        b = blue(corOriginal);
        threshold = 0.299*r + 0.587*g + 0.114*b;
        if (threshold >= 180){
          imgNova.set(x, y, #FFFFFF); //por alguma razão ao colocar 255 vai para azul
        }else{
          imgNova.set(x, y, 0);
        }
    }
  }
}

void cinzentaImagem() {
  color corOriginal, corDestino;
  float r,g,b;
    for (int x = 0; x < width/2; x++) {
      for (int y = 0; y < 240; y++) {
        corOriginal = imgOriginal.get(x, y);
        r = red(corOriginal);
        g = green(corOriginal);
        b = blue(corOriginal);
        float cinza = 0.3 * r + 0.59 * g + 0.11 * b;
        corDestino = color(cinza, cinza, cinza);
        imgNova.set(x, y, corDestino);
    }
  }
}


void inverteImagem() {
  color corOriginal, corDestino;
  float r,g,b;
    for (int x = 0; x < width/2; x++) {
      for (int y = 0; y < 240; y++) {
        corOriginal = imgOriginal.get(x, y);
        r = red(corOriginal);
        g = green(corOriginal);
        b = blue(corOriginal);
        corDestino = color(255-r, 255-g, 255-b);
        imgNova.set(x, y, corDestino);
    }
  }
}
void chuviscaImagem(int percent) {
  color corNova;
  for (int i=0; i<(((width*height)*percent)/100); i++) {
    int x = int(random(0, width));
    int y = int(random(0, height));
    int r = int(random(256));
    int g = int(random(256));
    int b = int(random(256));
    corNova = color(r, g, b);
    imgOriginal.set(x, y, corNova);
  }
}
