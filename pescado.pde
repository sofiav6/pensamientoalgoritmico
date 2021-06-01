//aqui realice un pecado que se moviera por la pantalla como si nadara 
class pescado {
  float posX=0;
  float posY=0;

  public pescado() {
     posX = random(0, width);
    posY = random(-height, 0);
  }

  void pescado1 () { 
    //pescadooo
    //translate(500, 500);

    ellipse(posX, posY, 10, 10);
    //fish
    stroke(0);
    smooth();
    fill(191, 171, 191);
    curve(posX, posY+200, posX-95, posY, posX-50, posY, posX+200, posY+200);
    curve(posX, posY-500, posX-95, posY, posX-50, posY, posX+200, posY-100);
    //fin top
    fill(191, 171, 191);
    triangle(posX, posY-20, posX-20, posY-70, posX-40, posY-20);
    triangle(posX+10, posY-20, posX-10, posY-65, posX-30, posY-20);
    triangle(posX+20, posY-20, posX, posY-60, posX-20, posY-20);
    triangle(posX+30, posY-20, posX+10, posY-55, posX-10, posY-20);
    triangle(posX+40, posY-20, posX+20, posY-50, posX, posY-20);

    //cuerpo
    arc(posX, posY, 100, 110, 0, PI/2);
    arc(posX, posY, 120, 140, 0, PI);
    arc(posX, posY, 120, 80, PI, TWO_PI-PI/2);
    arc(posX, posY, 120, 80, radians(270), radians(360));
    //ojos
    fill(255);
    stroke(0);
    ellipse(posX+30, posY-10, 30, 30);
    ellipse(posX+60, posY-10, 30, 30);
    fill(0);
    ellipse(posX+30, posY-10, 5, 5);
    ellipse(posX+60, posY-10, 5, 5);
    //aletas
    fill(191, 171, 191);
    triangle(posX+30, posY+28, posX+10, posY+45, posX+20, posY+15);
    fill(191, 171, 120);
    triangle(posX+30, posY+20, posX+0, posY+40, posX+10, posY+10);

    //boca
    fill(300, 0, 0);
    stroke(0, 0, 0);
    strokeWeight(2);
    ellipse(posX+50, posY+30, 15, 15);
    posX= posX+2;
    posY=posY+20;
    if (posX> 800) {
      posX = random(0, width);
    }
    if (posY>800) {
      posY=  random(-height, 0);
    }
  }
} 
