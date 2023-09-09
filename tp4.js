//https://youtu.be/idapG8-BIjU
let anchoL, altoL;
let cantL = 7;
let cantLBottom = 6;
let x, y, velC, velY, tam;
let estadoLadrillos = [];
let estadoLadrillosBottom = [];
let estado = 0;

let reiniciarButton;
let tiempoInicial = 60;
let tiempoRestante = tiempoInicial;
let temporizador;

let barraAncho = 80;
let barraAlto = 10;
let barraX;
let barraY;
let barraVelocidad = 6;

function setup() {
  createCanvas(400, 400);
 
  barraX = width / 2 - barraAncho / 2;
  barraY = height - 30;

  temporizador = setInterval(actualizarTemporizador, 1000);

  for ( let i=0; i<cantL; i++) {
  estadoLadrillos[i] = true;
  }
 
   for (let i = 0; i < cantLBottom; i++) {
  estadoLadrillosBottom[i] = true;
  }
  anchoL = 40;
  altoL = 10;

  //pelotita:
  x = width/2;
  y = height/2;
  tam = 10;
  velX = 3;
  velY = 3;
}


function draw() {
  background(200, 200, 255);
  if (estado == 0) {
  dibujarTemporizador();
  dibujarLadrillos();
  dibujarLadrillosBottom();
  dibujarPelotita();
  moverPelotita();
  evaluarColision();
  dibujarBarra();
  evaluarColisionConBarra();
  evaluarColisionConLadrillosBottom();
    
  if (keyIsDown(LEFT_ARROW)) {
  barraX -= barraVelocidad;
  }
  if (keyIsDown(RIGHT_ARROW)) {
  barraX += barraVelocidad;
  }
  barraX = constrain(barraX, 0, width - barraAncho);
  } else if ( estado == 3 ) {
 
  textSize(50);
  textAlign(CENTER, CENTER);
  text("Ganaste!!", width/2, height/2);
  textSize(20);
  text("Nombre:Erika Quiroga legajo:93554/2", 200 ,300);
  
  Botondereiniciar();
  }
}

function Botondereiniciar() {
  let reiniciarButton = createButton('Reiniciar');
  reiniciarButton.position(width / 2 - 50, height / 2 + 50);
  reiniciarButton.mousePressed(reiniciarJuego);
}

function reiniciarJuego() {
  estado = 0;
  tiempoRestante = tiempoInicial;
  barraX = width / 2 - barraAncho / 2;
  x = width / 2;
  y = height / 2;
  velX = 3;
  velY = 3;

  for (let i = 0; i < cantL; i++) {
  estadoLadrillos[i] = true;
  }

  for (let i = 0; i < cantLBottom; i++) {
  estadoLadrillosBottom[i] = true;
  }

  clearInterval(temporizador);
  temporizador = setInterval(actualizarTemporizador, 1000);
}

function dibujarTemporizador() {
  textSize(24);
  fill(0);
  textAlign(CENTER);
  text(`Tiempo restante: ${tiempoRestante}`, width / 2, 399);
  textSize(10);
  text(`izquierda<<<<`, 35, 360);
  textSize(10);
  text(`derecha>>>`, 370, 360);
}

function actualizarTemporizador() {
  if (tiempoRestante > 0) {
  tiempoRestante--;
  } else {
  clearInterval(temporizador);
  console.log("Tiempo agotado!");
  }
}

function dibujarLadrillos() {
  for ( let i=0; i<cantL; i++) {
  if ( estadoLadrillos[i] ) {
  let xL = i*anchoL+(width-anchoL*cantL)/2;
  let yL = 50;
  fill(255, 0, 196);
  rect( xL, yL, anchoL, altoL);
  }
 }
}

function dibujarLadrillosBottom() {
  for (let i = 0; i < cantLBottom; i++) {
  if (estadoLadrillosBottom[i]) {
  let xL = i * anchoL + (width - anchoL * cantLBottom) / 2;
  let yL = 70;
  fill(148, 12, 192);
  rect(xL, yL, anchoL, altoL);
  }
 }
}

function dibujarBarra() {
  fill(0, 250, 219);
  rect(barraX, barraY, barraAncho, barraAlto);
}

function dibujarPelotita() {
  push();
  translate(x, y);
  fill(35, 3 ,255);
  ellipse(0, 0, tam, tam);
  pop();
}

function moverPelotita() {
  x+=velX;
  y+=velY;

  if ( x>width-tam/2 || x < tam/2 ) {
  velX = -velX*random(.5,1.5);
  }
  if ( y>height-tam/2 || y < tam/2 ) {
  velY = -velY;
  }
  x = constrain(x, tam/2, width-tam/2);
  y = constrain(y, tam/2, height-tam/2);
}

function evaluarColisionConLadrillosBottom() {
  for (let i = 0; i < cantLBottom; i++) {
  if (estadoLadrillosBottom[i]) {
    let xL = i * anchoL + (width - anchoL * cantLBottom) / 2;
    let yL = 70;
    if (x - tam / 2 < xL + anchoL && x + tam / 2 > xL &&
        y + tam / 2 > yL && y - tam / 2 < yL + altoL) {
      console.log("Colisión con rectángulo inferior de índice " + i);
      velY = -velY;
      estadoLadrillosBottom[i] = false;
    }
  }
  }
}

function evaluarColision() {
  for ( let i=0; i<cantL; i++) {

  if ( estadoLadrillos[i] ) {
  let xL = i*anchoL+(width-anchoL*cantL)/2;
  let yL = 40;
  if ( x-tam/2 < xL+anchoL && x+tam/2 > xL
    && y-tam/2 < yL+altoL && y+tam/2 > yL ) {
    console.log("hay colision con indice "+ i);
    velY = -velY;

    estadoLadrillos[i] = false;

    if ( evaluarSiQuedanLadrillos() == false ) {

      estado = 3;
    }
  }
  }
  }
}

function evaluarColisionConBarra() {
  if (x - tam / 2 < barraX + barraAncho && x + tam / 2 > barraX &&
  y + tam / 2 > barraY && y - tam / 2 < barraY + barraAlto) {
  velY = -velY;
  }
}


function evaluarSiQuedanLadrillos() {
  let quedan = false;
  for ( let i=0; i<cantL; i++) {
  if ( estadoLadrillos[i] ) {
  quedan = true;
  return quedan;
   }
  }
  return quedan;
}
