int hAtual = 30; // y do cubo
int xAtual = 30; //x do cubo
int lAtual = 30; // z do cubo
boolean inicializador = false;

void settings(){
  size(600,480, P3D);
}

void setup(){
}
void draw (){
  background(#4B4949);
  if(inicializador){
    
    if((hAtual==xAtual) && (hAtual ==lAtual)&&(xAtual==lAtual)){
      fill(#11EA41);
    }
    else{
      fill(#B7B7B7);
    }
    
    text("Volume: " + hAtual*xAtual*lAtual, 50, 25);
    text("Altura: " + hAtual, 50, 40);
    text("Comprimento: " + xAtual, 50, 55);
    text("Largura: " + lAtual, 50, 70);
    
    ortho(-width/2, width/2, -height/2, height/2); // Same as ortho()
    translate(width/2, height/2, 0);
    rotateX(-PI/6);
    rotateY(PI/3);
    strokeWeight(2);
    box(xAtual,hAtual,lAtual);  
    
  }
  else{
    text("Use as setas para aumentar a largura\ne a altura, pressione espaço para\ncontinuar", 10, height/2);
  }
  
}
void keyPressed() {
  if (key == CODED && inicializador) {
    if (keyCode == UP && xAtual>1) {
      hAtual++;
    }
    if (keyCode == DOWN && hAtual>1) {
      hAtual--;
    }
    if (keyCode == RIGHT && xAtual>1) {
      lAtual++;
    }
    if (keyCode == LEFT && lAtual>1) {
      lAtual--;
    }
    fixarValores();
  }
  else{
    inicializador = true;
  }
}
void fixarValores(){
  xAtual = (90-hAtual)-lAtual;
}
