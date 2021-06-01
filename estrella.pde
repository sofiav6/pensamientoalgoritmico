// realice unas estrellas que rotan con la referencia de procesing 
class estrella {
  int posX=0;
  int posY=0;

  public estrella() {
    posX=0;
    posY=0;
  }

  void estrella1() {
    //estrella de mar 
    pushMatrix();
    fill(253, 210, 132);
    translate(width*0.8, height*0.5);
    rotate(frameCount / -150.0);
    star(0, 0, 30, 70, 5); 
    popMatrix();

    pushMatrix();
    fill(253, 210, 132);
    translate(200, 500);
    rotate(frameCount / -150.0);
    star(0, 0, 30, 70, 5); 
    popMatrix();

    pushMatrix();
    fill(253, 210, 132);
    translate(600, 200);
    rotate(frameCount / -150.0);
    star(0, 0, 30, 70, 5); 
    popMatrix();

    //push();
    //translate(280, 290); // center of the star
    //fill(253, 210, 132);
    //noStroke();
    //beginShape();
    //vertex(0, -50);
    //vertex(14, -20);
    //vertex(47, -15);
    //vertex(23, 7);
    //vertex(29, 40);
    //vertex(0, 25);
    //vertex(-29, 40);
    //vertex(-23, 7);
    //vertex(-47, -15);
    //vertex(-14, -20);
    //endShape(CLOSE);
    //pop();
  }
  void star(float x, float y, float radius1, float radius2, int npoints) {
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius2;
      float sy = y + sin(a) * radius2;
      vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}
//REFERENCIA
//https://processing.org/examples/star.html
