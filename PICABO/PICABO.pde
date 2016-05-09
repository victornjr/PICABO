import processing.serial.*;

Serial puerto;
int valor;
int juegoFiguras;
PImage img, colores, figuras, estrella, cara;
PantallaInicio inicio = new PantallaInicio();
juegoColores jc = new juegoColores();
juegoFiguras jf = new juegoFiguras();
int juego = 0;
int puntos = 0;

//esta es la pantalla principal del menu
class PantallaInicio{
  int posx1, posy1, posx2, posy2, radio;
  int r, g, b;

  PantallaInicio(){
    posx1 = 100;
    posy1 = 250;
    posx2 = 500;
    posy2 = 250;
    radio = 7; 
  }
  void dibujar(){
    noStroke();
    fill(255);
    rect(posx1, posy1, 300, 300, radio);
    rect(posx2, posy2, 300, 300, radio);
  }
  void letras(){
    fill(0);
    textSize(70);
    text("Colores", posx1 + 25, posy1 + 250);
    text("Figuras", posx2 + 30, posy2 + 250);
  }
}

//Aqui empieza el juego de colores
class juegoColores{
  String punt;
  String[] colores = new String[6];
  int colorRandom;
  String colorActual;
  
  juegoColores(){
    colores[0] = "Verde";
    colores[1] = "Rojo";
    colores[2] = "Amarillo";
    colores[3] = "Rosa";
    colores[4] = "Azul";
    colores[5] = "Morado";
  }
  
  void botonMenu(){
    fill(255);
    rect(20,20,80,40,7);
    text(punt, 450, 80);
    textSize(20);
    fill(0);
    text("Menú", 33 , 47 );
  }
  
  
  void cambiarColor(){
    colorRandom = int(random(0,6));
    if (colorRandom == 0){
      background(0, 193, 120);
      colorActual = colores[colorRandom];
      textSize(70);
      text(colores[colorRandom], 380, 350);
      botonMenu();
      
    }
    else if (colorRandom == 1){
      background(200, 46, 48);
      colorActual = colores[colorRandom];
      textSize(70);
      text(colores[colorRandom], 380, 350);
      botonMenu();
    }
    else if (colorRandom == 2){
      background(254, 247, 34);
      colorActual = colores[colorRandom];
      textSize(70);
      text(colores[colorRandom], 330, 350);
      botonMenu();
    }
    else if (colorRandom == 3){
      background(251, 165, 210);
      colorActual = colores[colorRandom];
      textSize(70);
      text(colores[colorRandom], 380, 350);
      botonMenu();
    }
    else if (colorRandom == 4){
      background(51, 56, 158);
      colorActual = colores[colorRandom];
      textSize(70);
      text(colores[colorRandom], 380, 350);
      botonMenu();
    }
    else if (colorRandom == 5){
      background(106, 55, 132);
      colorActual = colores[colorRandom];
      textSize(70);
      text(colores[colorRandom], 330, 350);
      botonMenu();
    }
  }
  
  void volverJugar(){
    background(255);
    textSize(90);
    fill(0,170,68);
    text("¡GANASTE!", 225, 125);
    image(cara, 300, 120, 280, 280);
    fill(255);
    stroke(3);
    rect(200, 400, 200, 30, 7);
    rect(500, 400, 200, 30, 7);
    fill(0);
    textSize(20);
    text("Volver a jugar", 230, 425);
    text("Menú", 570, 425);
    
  }
}

//Aqui empieza el juego de las figuras
class juegoFiguras{
  String puntF;
  String[] figuras = new String[6];
  int figuraRandom;
  String figuraActual;
  
  juegoFiguras(){
    figuras[0] = "Círculo";
    figuras[1] = "Cuadrado";
    figuras[2] = "Triángulo";
    figuras[3] = "Rectángulo";
    figuras[4] = "Rombo";
    figuras[5] = "Estrella";
  }
  
  void botonMenu(){
    fill(255);
    stroke(1);
    rect(20,20,80,40,7);
    fill(0);
    text(puntF, 450, 80);
    textSize(20);
    text("Menú", 33 , 47 );
  }
  
  
  void cambiarFigura(){
    figuraRandom = int(random(0,6));
    background(255);
    if (figuraRandom == 0){
      figuraActual = figuras[figuraRandom];
      fill(0, 193, 120);
      ellipse(450, 250, 250, 250);
      fill(0);
      textSize(70);
      text(figuras[figuraRandom], 330, 450);
      botonMenu();
      
    }
    else if (figuraRandom == 1){
      figuraActual = figuras[figuraRandom];
      fill(200, 46, 48);
      rect(350, 150, 200, 200);
      fill(0);
      textSize(70);
      text(figuras[figuraRandom], 300, 450);
      botonMenu();
    }
    else if (figuraRandom == 2){
      figuraActual = figuras[figuraRandom];
      fill(254, 247, 34);
      triangle(300, 350, 450, 123, 600, 350);
      fill(0);
      textSize(70);
      text(figuras[figuraRandom], 305, 450);
      botonMenu();
    }
    else if (figuraRandom == 3){
      figuraActual = figuras[figuraRandom];
      fill(251, 165, 210);
      rect(315, 150, 300, 150);
      fill(0);
      textSize(70);
      text(figuras[figuraRandom], 285, 450);
      botonMenu();
    }
    else if (figuraRandom == 4){
      figuraActual = figuras[figuraRandom];
      fill(51, 56, 158);
      quad(325, 250, 450, 125, 575, 250, 450, 375);
      fill(0);
      textSize(70);
      text(figuras[figuraRandom], 335, 450);
      botonMenu();
    }
    else if (figuraRandom == 5){
      figuraActual = figuras[figuraRandom];
      image(estrella, 300, 100, 280, 280);
      fill(0);
      textSize(70);
      text(figuras[figuraRandom], 330, 450);
      botonMenu();
    }
  }
  
  void volverJugar(){
    background(255);
    textSize(90);
    fill(0,170,68);
    text("¡GANASTE!", 225, 125);
    image(cara, 300, 120, 280, 280);
    fill(255);
    stroke(3);
    rect(200, 400, 200, 30, 7);
    rect(500, 400, 200, 30, 7);
    fill(0);
    textSize(20);
    text("Volver a jugar", 230, 425);
    text("Menú", 570, 425);
    
  }
}

void setup(){
  size(900,600);
  puerto = new Serial(this, Serial.list()[1], 9600);
  img =  loadImage("PICABO.png");
  colores = loadImage("colores.png");
  figuras = loadImage("Figuras.png");
  estrella = loadImage("estrella.png");
  cara = loadImage("feliz.png");
}

void draw(){
   if (juego == 1){
     if(puerto.available()>0){ 
        valor = puerto.read();
        int m = second();
        jc.punt = "Puntos: " + puntos;
        if (valor == 2 & jc.colorActual=="Rojo"){
          puntos +=10;
          jc.punt = "Puntos: " + puntos;
          jc.cambiarColor();
          println("boton 2 " + puntos);
          m =0;
        }
        else if (valor == 3 &jc.colorActual=="Amarillo" ){
          puntos +=10;
          jc.punt = "Puntos: " + puntos;
          jc.cambiarColor();
          println("boton 3 " + puntos);
          m =0;
        }
        else if (valor == 4 & jc.colorActual=="Morado"){
          puntos +=10;
          jc.punt = "Puntos: " + puntos;
          jc.cambiarColor();
          println("boton 4 " + puntos);
          m =0;
        }
        else if (valor == 5 & jc.colorActual=="Rosa"){
          puntos +=10;
          jc.punt = "Puntos: " + puntos;
          jc.cambiarColor();
          println("boton 5 " + puntos);
          m =0;
        }
        else if (valor == 6 & jc.colorActual=="Verde"){
          puntos +=10;
          jc.punt = "Puntos: " + puntos;
          jc.cambiarColor();
          println("boton 6 " + puntos);
          m =0;
        }
        else if (valor == 7 & jc.colorActual=="Azul"){
          puntos +=10;
          jc.punt = "Puntos: " + puntos;
          jc.cambiarColor();
          println("boton 7 " + puntos);
          m =0;
        }
        else if(puntos >= 100){
          juego = 3;
          jc.volverJugar();
        }
        else{
          if(m%5 == 0){
            jc.cambiarColor();
          }
        }
      }
   }
    else if (juego == 2){
      if(puerto.available()>0){ 
        valor = puerto.read();
        int m = second();
        jf.puntF = "Puntos: " + puntos;
        if (valor == 2 & jf.figuraActual=="Cuadrado"){
          puntos +=10;
          fill(0);
          jf.puntF = "Puntos: " + puntos;
          jf.cambiarFigura();
          println("boton 2 " + puntos);
          m =0;
        }
        else if (valor == 3 & jf.figuraActual=="Triángulo" ){
          puntos +=10;
          jf.puntF = "Puntos: " + puntos;
          jf.cambiarFigura();
          println("boton 3 " + puntos);
          m =0;
        }
        else if (valor == 4 & jf.figuraActual=="Estrella"){
          puntos +=10;
          jf.puntF = "Puntos: " + puntos;
          jf.cambiarFigura();
          println("boton 4 " + puntos);
          m =0;
        }
        else if (valor == 5 & jf.figuraActual=="Rectángulo"){
          puntos +=10;
          jf.puntF = "Puntos: " + puntos;
          jf.cambiarFigura();
          println("boton 5 " + puntos);
          m =0;
        }
        else if (valor == 6 & jf.figuraActual=="Círculo"){
          puntos +=10;
          jf.puntF = "Puntos: " + puntos;
          jf.cambiarFigura();
          println("boton 6 " + puntos);
          m =0;
        }
        else if (valor == 7 & jf.figuraActual=="Rombo"){
          puntos +=10;
          jf.puntF = "Puntos: " + puntos;
          jf.cambiarFigura();
          println("boton 7 " + puntos);
          m =0;
        }
        else if(puntos >= 100){
          juego = 4;
          jf.volverJugar();
        }
        else{
          if(m%5 == 0){
            jf.cambiarFigura();
          }
        }
      }
    }
    else if (juego==0){
        inicio.r = int(random(100,255));
        inicio.g = int(random(0,255)); 
        inicio.b = int(random(0,255));
        background(inicio.r, inicio.g, inicio.b);
        delay(1700);
        image(img, 250, 20);
        inicio.dibujar();
        inicio.letras();
        image(colores, 170, 280, 150, 150);
        image(figuras, 560, 290); 
    }
  }

void mouseClicked(){
  if (mouseY<=550 & mouseY>=250 & mouseX<=400 & mouseX>=100 & juego==0){
    println("Colores");
    juego = 1;
  }
  else if (mouseY<=550 & mouseY>=250 & mouseX<=800 & mouseX>=500 & juego==0){
    println("Figuras");
    juego=2;
  }
  else if (mouseY<=60 & mouseY>=20 & mouseX<=100 & mouseX>=20 & (juego==1 | juego==2)){
    println("Menú");
    puntos=0;
    juego=0;
  }
  else if (mouseY<=430 & mouseY>=400 & mouseX<=700 & mouseX>=500 & juego==3){
    println("Menú");
    puntos=0;
    juego=0;
  }
  else if (mouseY<=430 & mouseY>=400 & mouseX<=400 & mouseX>=200 & juego==3){
    println("Volver A JUGAR");
    puntos=0;
    juego=1;
  }
  else if (mouseY<=430 & mouseY>=400 & mouseX<=700 & mouseX>=500 & juego==4){
    println("Menú");
    puntos=0;
    juego=0;
  }
  else if (mouseY<=430 & mouseY>=400 & mouseX<=400 & mouseX>=200 & juego==4){
    println("Volver A JUGAR");
    puntos=0;
    juego=2;
  }
}