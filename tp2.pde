//https://youtu.be/boZ2KrPqEoA
//nombre: Quiroga Erika
//legajo:93554/2


PImage imagen;

color cuadrado = color(0);
color fondo = color(255);
color inicio = cuadrado;
color inicio2 = fondo;

void setup() {
  size(800, 400);
  noFill();
  imagen = loadImage("image.png");
}

void draw() {
  background(fondo);
  cuadrado();
  image(imagen, 400, 0);
  boton();
}

void mousePressed() {
  if (mouseX >= 700 && mouseX <= 780 && mouseY >= 10 && mouseY <= 30) {
    reiniciar();
  }
}

void keyPressed() {
  if (key == 'e'){
    random();
  }
}
