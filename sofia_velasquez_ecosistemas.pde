//INSTRUCCIONES IMPORTANTES
//PARA PRESIONAR LAS TECLAS, PONER EL TECLADO EN MAYUSCULA
//NO OLVIDAR PRESIONAR MUCHAS VECES CLIC DERECHO PARA BURBUJAS 
//LAS REFERENCIAS SE ENCUENTRAN AL FINAL DE CADA CLASS 
//PRESIONAR A PARA PASAR A LAS INSTRUCCIONES
//PRESIONAR S PARA PASAR AL ULTIMO ESTADO 
int time1 = 30000;

//VARIABLES 
int estado;
int posX =0; 
int posY=0;
tiburon_ tiburon1;
int numActual = 0;
Burbuja[] burbu;
estrella estrella1; 
pescado pescado1;
//screenState
int gamestart=0;
int gameinstrucctions=1;
int game=2;
int gameover=3;
int wingame=4;
//VARIABLES IMAGENES DE LOS ESTADOS 
PImage foto;
PImage foto1;
PImage foto2;
PImage foto3;



void setup() {

  size (1000, 1000);

  //FOTOS DE LOS ESTADOS 

  foto = loadImage("imagenpez.PNG");
  foto1 = loadImage("instruccion.png");
  foto2 = loadImage("perdiste.png");
  foto3 = loadImage("ganaste.png");


  burbu = new Burbuja[100];
  for (int i = 0; i < burbu.length; i++) {

    burbu[i] = new Burbuja();
  }
  //CREACION DE LAS CLASES 
  tiburon1= new tiburon_(); 
  estrella1= new estrella(); 
  pescado1= new pescado();
}

void draw() {



  background(20, 0, 54);

  //PRIMER ESTADO GAME START, PRESIONA PARA COMENZAR 

  if (estado==gamestart) {  
    background(20, 0, 54);
    image(foto, 0, 0, 1000, 1000);  

    if ((mouseX>50)&&
      (mouseX<950)&&
      (mouseY>300)&&
      (mouseY<700)&&
      (mousePressed==true)) {
      estado=gameinstrucctions;
    }

    //ESTADO INSTRUCCIONES DEL JUEGO
  } else  if (estado==gameinstrucctions) {  
    background(20, 0, 54);
    image(foto1, 0, 0, 950, 950);
    if (keyPressed== true) {
      if (key=='A') { 
        estado=game;
      }
    }
  }


  // ESTADO JUEGO 
  else if (estado==game) {  

    background(20, 0, 54);

    for (int i = 0; i < numActual; i++) {

      burbu[i].display();
      burbu[i].step();
    }
    //DIBUJOS CLASES 
    tiburon1.tiburon(); 
    estrella1.estrella1(); 
    pescado1.pescado1(); 

//COALICION DEL PESCADO Y TIBURON 
    float distancia1=dist(pescado1.posX, pescado1.posY, mouseX, mouseY);
    //println(distancia1);

    if (distancia1 <32) {

      //pescado1.posY=pescado1.posY-1100;
      estado=wingame;
    }
    
    
    //temporizador
    int currentTime= millis();
    println(currentTime);
    fill (135, 206, 235);
    textSize(50);
    text(currentTime, 800, 300);
    if (currentTime > time1) {
      estado=gameover;
    }
  }


  //ESTADO JUEGA DE NUEVO 
  else  if (estado==gameover) {  
    background(20, 0, 54);
    image(foto2, 0, 0, 1000, 1000);
  }

  //ETADOGANADOR
  else if (estado==wingame) {
    background(20, 0, 54);
    image(foto3, 0, 0, 1000, 1000);
  }

  if (keyPressed== true) {
    if (key=='M') { 
      estado=gamestart;
    }
  }
}



void mousePressed() {

  numActual += 1;
}

void keyPressed() {

  numActual-=1;
}
