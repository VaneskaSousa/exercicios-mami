int margem = 50; //margem para deixar a linha ha 50 pixels de distancia do "chão" do quadro visual
float borda = 33.3; //10cm
float menor = 66.6; //20cm
float maior = 100; //30cm
int qntdV = 3;
int qntdH = 2;
int contV = 0;

void settings() {
  size(600, 480);
}
void setup() {
  noLoop();  
}
void draw() {
  clear(); //Apaga os eventos da chamada de quadro anterior
  background(0); //background da cena

  //linhas
  stroke(255);
  line(0, height-margem, width, height-margem);

  fill(#F50707);
  
  for (int c = 1; c <= (qntdH+qntdV); c++) {
    if (c == 1) {
      rect(borda, height-margem*2-borda, maior, menor);
    } else if (c > 1 && c <= qntdH) {
      rect((borda*c)+maior, height-margem*2-borda, maior, menor);
    } else{
      contV = c-1;
      rect((borda*3)+(maior*contV), (height-margem*2)-(borda*2), menor, maior);
    }
  }
}
