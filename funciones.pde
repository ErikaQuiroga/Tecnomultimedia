void random() {
  cuadrado = color(random(255), random(255), random(255));
  fondo = color(random(255), random(255), random(255));
  background(fondo);
}


void cuadrado(){
  rectMode(CENTER);
  for (int x = 20; x > 0; x--) {
    strokeWeight(9);
    rect(200, 200, x*22, x*22);
  }
}

void reiniciar() {
  cuadrado = inicio;
  fondo = inicio2;
  background(fondo);
}

void boton() {
  rect(740,20,80,30);
  textAlign(CENTER, CENTER);
  textSize(22);
  text("Reiniciar", 740, 20);
}
