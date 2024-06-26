PGraphics CapamanchaG, CapamanchaN, Capalineas;
int cant = 5;
PImage[] manchaG;
PImage[] manchaN;
PImage[] lineas;
//conteo de la cantidad dibujada
int[] conteoG;
int[] conteoN;
int[] conteoLineas;

void setup() {
  size(550, 800);
  
  manchaG = new PImage[cant];
  manchaN = new PImage[cant];
  lineas = new PImage[cant];
  conteoG = new int[cant];
  conteoN = new int[cant];
  conteoLineas = new int[cant];
  
  //CAPAS
  CapamanchaG = createGraphics(550, 800);
  CapamanchaN = createGraphics(550, 800);
  Capalineas = createGraphics(550, 800);
  
  //carga de imagenes 
  for (int i = 0; i < cant; i++) {
    String manchagris = "manchasg" + (i + 1) + ".png"; 
    manchaG[i] = loadImage(manchagris);
    conteoG[i] = 0; 
  }
  
  for (int i = 0; i < cant; i++) {
    String manchanegra = "manchasn" + (i + 1) + ".png"; 
    manchaN[i] = loadImage(manchanegra);
    conteoN[i] = 0; 
  }
  
  for (int i = 0; i < cant; i++) {
    String dlineas = "Linea" + (i + 1) + ".png"; 
    lineas[i] = loadImage(dlineas);
    conteoLineas[i] = 0; 
  }
}

void draw() {
  background(255);
  
  
  // capa mancha NEGRA

  CapamanchaN.beginDraw();
  for (int i = 0; i < cant; i++) {
    if (mouseY > 0 && mouseY < 266 &&  conteoN[i] <= 5) { 
      float x = random(width); //posicion
      float y = random(height); 
    float w = random(150, 250); //ancho
      float h = random(150, 250);//largo
      CapamanchaN.image(manchaN[i], x, y, w, h); 
      conteoN[i]+=1; 
    }
  }
  CapamanchaN.endDraw();
  image(CapamanchaN, 0, 0); 
  // capa Lineas
  Capalineas.beginDraw();
  for (int i = 0; i < cant; i++) {
    if (mouseY > 532 && mouseY < 800 && conteoLineas[i] <= 5) { 
      float x = random(width); //posicion
      float y = random(height); 
      float w = random(5, 50); //ancho
      float h = random(5, 50); //largo
      Capalineas.image(lineas[i], x, y, w, h); 
      conteoLineas[i]+=1; 
    }
  }
  Capalineas.endDraw();
  image(Capalineas, 0, 0); 
  // capa mancha gris
   
  CapamanchaG.beginDraw();
  for (int i = 0; i < cant; i++) {
    if (mouseY > 266  &&  mouseY <532 && conteoG[i] <= 5) {
      float x = random(width); //posicion
      float y = random(height); 
      float w = random(250, 450); //ancho
      float h = random(250, 450);//largo
      CapamanchaG.image(manchaG[i], x, y, w, h);
      conteoG[i]+=1; 
    }
  }
  CapamanchaG.endDraw();
  image(CapamanchaG, 0, 0); 
   }
