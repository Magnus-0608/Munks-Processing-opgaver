int fart = 0;


void setup() {
  size(800, 800);
}


void draw() {
  background(227);// nyt stykke papir
  translate(fart, 400);//placering af cirkel
  rotate(frameCount/150.0);//får hjulet til at dreje rundt
  circle(0, 0, 300);//indsætter cirklen
  line(-150, 0, 150, 0);//sætter den vertikale linje
  line(0, -150, 0, 150);//sætter den horisontale linje
  fart ++;
  if (fart >= width+150) {
    fart = -100;
  }
}
