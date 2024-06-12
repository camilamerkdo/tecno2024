class ManchaG {
 constructor(imagen, x, y, w, h, velocidad) {
  this.imagen = imagen;
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.velocidad = velocidad;
  this.rotating = false;
  this.angle = 0;
  this.opacidad = 255;
 }

 startRotating() {
  this.rotating = true;
 }

 stopRotating() {
  this.rotating = false;
  this.angle = 0;
 }

 desvanecer() {
  this.opacidad -= 5;
 }

 dibujar(capa) {
  capa.push();
  capa.translate(this.x + this.w / 2, this.y + this.h / 2);
  if (this.rotating) {
   this.angle += this.velocidad;
  }
  capa.rotate(this.angle);
  capa.tint(255, this.opacidad);
  capa.imageMode(CENTER);
  capa.image(this.imagen, 0, 0, this.w, this.h);
  capa.pop();
 }
}