//presionar muchas veces clic derecho para que salgan burbujas
//esperar dos segundos mientras emergen 
class Burbuja {

  float xpos, ypos, tam, yspeed;

  Burbuja() {

    ypos = height + tam;
    xpos = random(width);
    tam = random(6, 45);
    yspeed= random(0.1, 2);
  }

  void display() {
    ellipseMode(CENTER );
    strokeWeight(1);
    fill(177, 15);
    ellipse(xpos, ypos, tam, tam);
    fill(255, 10);
    ellipse(xpos+((tam*0.25)*1.2), ypos-((tam*0.25)*1.2), tam/10, tam/10); //para que la segunda elipse esté sp a una distancia
  }

  void step() {

    xpos = xpos + random(-2, 2);
    ypos -= yspeed;

    if (ypos < 0) {

      ypos = height + tam;
    }
  }
}

//https://github.com/delsotano/OPP-con-Processing/blob/master/burbujas ESTA ES LA REFERENCIA DE LAS BURBUJAS 
