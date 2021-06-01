//aqui realice un tiburon que iguiera el mouse 
class tiburon_ {
  int posX= width/2;
  int posY=height/2; 

  public tiburon_() {
    posX=width/2;
    posY=0;
  }

  void tiburon() {
    //tiburon 


    scale(0.90);
    fill(84, 84, 84);
    noStroke();
    ellipse(mouseX, mouseY, 150, 45);
    //shark eye
    noStroke();
    fill(255);
    ellipse(mouseX-55, mouseY-7, 10, 10);
    fill(155, 0, 0);
    ellipse(mouseX-58, mouseY-5.5, 5, 5);

    //shark fin
    noStroke();
    fill(84, 84, 84);
    triangle(mouseX-45, mouseY, mouseX+30, mouseY-45, mouseX+10, mouseY-15);
    triangle(mouseX-35, mouseY+20, mouseX-15, mouseY+40, mouseX-10, mouseY+20);
    //shark tail
    triangle(mouseX+60, mouseY, mouseX+100, mouseY-30, mouseX+85, mouseY+1);
    triangle(mouseX+60, mouseY, mouseX+100, mouseY+20, mouseX+85, mouseY+1);
  }
}
