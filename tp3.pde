//Alumno:Erika Quiroga
//Comisión 3
//Legajo: 93554/2
//link video: https://www.youtube.com/watch?v=rg8yozbowQY

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
PImage imagen7;
PImage imagen8;
PImage imagen9;
PImage imagen10;
PImage imagen11;
PImage imagen12;
PImage imagen13;
PImage imagen14;
PImage creditos;

PFont letra;

int pantalla=1; 

void setup() {
  size (600,600);
  imagen1= loadImage("blancanieves1.jpg");
  imagen2= loadImage("blancanieves2.jpg");
  imagen3= loadImage("opciones.jpg");
  imagen4= loadImage("cazador1.jpg");
  imagen5= loadImage("cazador2.jpg");
  imagen6= loadImage("casa.jpg");
  imagen7= loadImage("casa1.jpg");
  imagen8= loadImage("bosque.jpg");
  imagen9= loadImage ("enanosfin.jpg");
  imagen10= loadImage ("manzana.jpg");
  imagen11= loadImage ("manzana2.jpg");
  imagen12= loadImage("manzanafin.jpg");
  imagen13= loadImage("final.jpg");
  imagen14= loadImage("casafinal.jpg");
  creditos= loadImage("creditos.jpg");
  letra= loadFont ("SitkaText-50.vlw");
}


void draw() {
  
if (pantalla== 1) {
 image(imagen1,0,0);
 imagen1.resize(600,600);
 textFont(letra);
 fill (247,7,112);
 text ("Blancanieves \n Y los siete \n enanitos.",0,50);
 textSize (35);
 rect(470, 125, 120, 45);
 fill(225);
 text("Iniciar",480,160);
 fill(247,7,112);
 rect(470, 185, 120, 45);
  fill(225);
 textSize (28);
 text("Créditos",475,220);

}

 else if (pantalla==2){
 image (imagen2,0,0);
 imagen2.resize(600,500);
 cuadrotexto();
 text(" Blancanieves era una joven princesa que vivía en un castillo junto a su malvada\n madrastra. La reina era extremadamente vanidosa y siempre consultaba a su espejo mágico\n para asegurarse de ser la más hermosa del reino. Sin embargo, un día el espejo\n le reveló que Blancanieves era ahora la más bella. Llena de envidia, la reina decidió\n deshacerse de la princesa y envió a un cazador para matarla en el bosque.",0,520);
 textSize(15);
 siguiente();
 }
 
 else if (pantalla==3){
 image (imagen3,0,0);
 imagen3.resize(600,500);
 cuadrotexto();
 text("Elegí la opción:\n El cazador decide matar a Blancanieves IZQUIERDA.\n El cazador se apiada de blancanieves DERECHA.",80,530);
 textSize(20);
 }
 
 else if (pantalla==4){
 image (imagen4,0,0);
 imagen4.resize(600,500);
 cuadrotexto();
 text("El cazador decide matar a Blancanieves.",120,560);
 textSize(20);
 reiniciar();
 }
 
 else if (pantalla==5){
 image (imagen5,0,0);
 imagen5.resize(600,500);
 cuadrotexto();
 text("El cazador se apiada de Blancanives.",120,560);
 textSize(20);
 siguiente();
 }
 
  else if (pantalla==6){
 image (imagen6,0,0);
 imagen6.resize(600,500);
 cuadrotexto();
 text("Blancanieves se escapa al bosque \n y encuentra una pequeña casa. ",120,560);
 textSize(25);
 siguiente();
 }

 else if (pantalla==7){
 image (imagen3,0,0);
 imagen3.resize(600,500);
 cuadrotexto();
 text("Elegí la opción:\n Decide adentrarse al bosque IZQUIERDA.\n Decide entrar a la casa DERECHA.",80,530);
 textSize(20);
 }
 
 else if (pantalla==8){
 image (imagen8,0,0);
 imagen8.resize(600,500);
 cuadrotexto();
 text("Blancanieves decide adentrarse al bosque. ",120,560);
 textSize(20);
 siguiente();
 }
 
  else if (pantalla==9){
 image (imagen7,0,0);
 imagen7.resize(600,500);
 cuadrotexto();
 text("Blancanieves decide entrar a la casa.",120,560);
 textSize(20);
 siguiente();
 }
  
 else if (pantalla==10){
 image (imagen9,0,0);
 imagen9.resize(600,500);
 cuadrotexto();
 text("Entra a la casa y encuentra varias cosas pequeñas como platos,\n sillas, mesas, etc. Y decide vivir feliz junto a los enanos. Fin",0,530);
 textSize(20);
 reiniciar();
 }
  
 else if (pantalla==11){
 image (imagen10,0,0);
 imagen10.resize(600,500);
 cuadrotexto();
 text("Blancanieves camina por el bosque y despues de un rato\n se encuentra a una anciana que le ofrece una manzana.",0,530);
 textSize(20);
 siguiente();
  }
  
 else if (pantalla==12){
 image (imagen3,0,0);
 imagen3.resize(600,500);
 cuadrotexto();
 text("Elegí la opción:\n Decide comer la manzana IZQUIERDA.\n Decide seguir caminando por el bosque y volver a la casa DERECHA.",80,530);
 textSize(15);
 }
 
 else if (pantalla==13){
 image (imagen14,0,0);
 imagen14.resize(600,500);
 cuadrotexto();
 text("Decide seguir caminando por el bosque y vuelve a la casa.",120,560);
 textSize(15);
 siguiente();
 }
  
 else if (pantalla==14){
 image (imagen12,0,0);
 imagen12.resize(600,500);
 cuadrotexto();
 text("Blancanieves come la manzana y muere.",120,560);
 textSize(20);
 reiniciar();
 }
   
 else if (pantalla==15){
 image (imagen13,0,0);
 imagen13.resize(600,500);
 cuadrotexto();
 text("Se  encuentra con un príncipe \n y viven felices para siempre.",120,560);
 textSize(20);
 reiniciar();
 }
 else if (pantalla==16){
 image (creditos,0,0);
 creditos.resize(600,600);
 textSize(20);
 fill(247,7,112);
 reiniciar();
}
}


void mousePressed() {
 if (pantalla == 1 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 2;
    }
else if (pantalla==2 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 3;
    }
else if (pantalla==3 && mouseX >= 120 && mouseX <= 240 && mouseY >= 250 && mouseY <= 350){
    pantalla = 4;
    }
else if (pantalla==4 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 1;
    }
else if (pantalla==3 && mouseX >= 370 && mouseX <= 470 && mouseY >= 200 && mouseY <= 300){
    pantalla = 5; 
    }
else if (pantalla==5 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 6;
    }
else if (pantalla==7 && mouseX >= 120 && mouseX <= 240 && mouseY >= 250 && mouseY <= 350){
    pantalla = 8;
    }
else if (pantalla==7 && mouseX >= 370 && mouseX <= 470 && mouseY >= 200 && mouseY <= 300){
    pantalla = 9;
    }
else if (pantalla==8 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 11;
    }
else if (pantalla==6 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 7;
    }
else if (pantalla==9 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 10;
    }
else if (pantalla==10 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 1;
    }
else if (pantalla==11 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 12;
    }
else if (pantalla==12 && mouseX >= 370 && mouseX <= 470 && mouseY >= 200 && mouseY <= 300){
    pantalla = 13; 
    }
else if (pantalla== 12 && mouseX >= 120 && mouseX <= 240 && mouseY >= 250 && mouseY <= 350){
    pantalla = 14;
    }
else if (pantalla==14 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 1;
    }
else if (pantalla==13 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 15;
    }
 else if (pantalla==15 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 1;
  }
 else if (pantalla == 1 && mouseX >= 470 && mouseX <= 590 && mouseY >= 185 && mouseY <= 230){
    pantalla = 16;
}
else if (pantalla == 16 && mouseX >= 470 && mouseX <= 590 && mouseY >= 125 && mouseY <= 170){
    pantalla = 1;
}
}
