// Quiroga erika
// tp1 comisión 1
PImage cancun;
PImage cancun1;
PImage cancun2;
PImage cancun3;
PFont fuente;
int inicio;
int pantalla = 1;
int duracionPantalla = 3500;
float posX = 0;
float posY = 0;
void setup() {
  size(640, 480);
  textSize(30);
  fuente = loadFont("BookmanOldStyle-Italic-48.vlw");
  textFont(fuente);
  cancun1 = loadImage("cancun1.jpg");
  cancun2 = loadImage("cancun2.jpg");
  cancun3= loadImage("cancun3.jpg");
  inicio = millis();
}

void draw() {
  if (pantalla == 1) {
    image(cancun1,0,0);
    fill(3, 71, 255);
    translate(posX,0);
    textSize(30);
    text("Cancún\nCiudad de México", 100, 100);
  } else if (pantalla == 2) {
    image(cancun2,0,0);

    fill(193, 49, 160);
    translate(80,posY);
    textSize(25);
    text("Visite las letras\n y el mirador de Cancún", 100, 100);
  } else if (pantalla == 3) {
    image(cancun3, 0,0);

  fill(11,70,88);
  rect(500, 400, 120, 45);

  fill(0);
  textAlign(CENTER, CENTER);
  text("Reiniciar", 500, 400, 120, 45);
  fill(3, 78, 80);
    translate(posX,0);
    textSize(20);
    text("Cancún se encuentra ubicada al noreste\n de la Península de Yucatán.\n En esta se concentra la mayor parte\n de las playas y actividades turísticas", 0, 65);
  }

  if (millis() - inicio >= duracionPantalla) {
    siguientePantalla();
  }
  posX+=1;
  posY+=1;
}
void siguientePantalla() {
  pantalla++;
  inicio = millis();

  if (pantalla > 1) {
    posX=0;
    posY=0;
  }
}

void mousePressed() {
  if (pantalla >= 3 && mouseX >= 500 && mouseX <= 620 && mouseY >= 400 && mouseY <= 445) {
    pantalla = 1;
    inicio = millis();
  }
}
