# filtros
Na tarefa da aula remota 17 de MAMI foi proposto que tentassemos recriar dois efeitos de [filtros do processing](https://processing.org/reference/filter_.html) só não vale o `INVERT` e `GRAY` pois foram ensinados na aula.

Sendo assim, tentei recriar os efeitos de `THRESHOLD` e `ERODE`. 

## THRESHOLD

Esse aqui foi o mais simples de implementar. Bastou uma pesquisa rápida na documentação do java e encontrei o [método responsável](https://introcs.cs.princeton.edu/java/31datatype/Threshold.java.html) por esse efeito bem como o código, o que me levou para [outra classe](https://introcs.cs.princeton.edu/java/31datatype/Luminance.java.html) onde encontrei "a formula".

Com isso, bastou adaptar ao código usado em aula (de leitura de matriz e de uso do RGB e de `color()`).

No final, ficou da seguinte maneira: 
![](https://i.imgur.com/EKqxaMB.jpg)

E o código:
<pre>void thresholdImagem(){
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
}</pre>

## ERODE

Esse foi bem complicadinho de entender e sei que implementei errado (alguem me ajuda por favor), mas pelo que entendi conversando com um dos monitores da disciplina sobre [o artigo](https://blog.ostermiller.org/efficiently-implementing-dilate-and-erode-image-functions/) que usei de base, o ERODE seria a mesma lógica do THRESHOLD, mudando apenas que o que era branco agora recebe a mesma cor da imagem original. 

Com isso bastou adaptar a função anterior e modificar os comendos de se a cor for maior que 180:
<pre>if (threshold >= 180){
          color cor = color (r,g,b);
          imgNova.set(x, y, cor); //pelo que eu entendi a implementação é basicamente a mesma do threshold mas onde era branco fica com a cor original
        }else{
          imgNova.set(x, y, 0);
        }</pre>

No final, ficou da seguinte maneira: 
![](https://i.imgur.com/cD2TcNw.jpeg)

> Foi corrido mas fim de semestre é osso :smiley:
