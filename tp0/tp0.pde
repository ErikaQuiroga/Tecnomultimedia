// Quiroga erika
// tp0 comisión 1

PImage paisaje;

size(800, 400);
paisaje = loadImage("paisaje.jpg");

background(36, 104, 211);
noStroke();
image(paisaje, 0, 0, 400, 400);


fill(234, 234, 234);
stroke(224,230,252);
strokeWeight(2);
ellipse(800, 220, 250, 125);//grande
fill(219, 219, 219);
stroke(232,235,245);
strokeWeight(3);
ellipse(600, 230, 200, 90); //mediana
fill(196, 196, 196);
stroke(212,213,216);
strokeWeight(2);
ellipse(480, 220, 130, 30); //chiquita

fill(23, 77, 162);
stroke(0,30,137);
strokeWeight(1);
triangle(400, 250, 470, 225, 700, 300);//chiquita
fill(19, 64, 134);
triangle(450, 300, 600, 220, 850, 300);//mediana
fill(0, 49, 131);
triangle(550, 300, 730, 200, 1030, 300);//grande
noStroke();
fill(29, 155, 20);
quad(400, 250, 800, 255, 800, 315, 400, 350);

fill(67, 41, 0);
rect(470, 250, 10, 30);
fill(0, 72, 14);
rect(450, 200, 70, 70, 20, 20, 35, 5);// el ultimo num redondea
stroke(152, 83, 9);
strokeWeight(2);
fill(206, 196, 0);
quad(400, 350, 800, 315, 800, 400, 400, 400);
