boolean rose = false;
boolean clean = false;
boolean øl = false;
boolean mow = false;
boolean cash = false;
boolean tøj = false;
boolean morGlad = false;
boolean farGlad = false;
boolean søsGlad = false;

void setup() {
  size (800, 600);
}

void draw() {
  background(152, 190, 100);
  tegnlinjer();
}

void tegnlinjer() {
  line(0, 200, width, 200);
  line(0, 400, width, 400);
  line(200, 0, 200, height);
  line(400, 0, 400, height);
  line(600, 0, 600, height);

  fill(0);
  textSize(75);
  text("Mor", 35, 130);
  text("Far", 40, 330);
  text("Søs", 40, 530);
  text("Rose", 225, 130);
  text("Beer", 225, 330);
  text("Cash", 225, 530);
  text("Clean", 410, 130);
  text("Mow", 423, 330);
  text("Tøj", 445, 530);
}

void mouseClicked() {
  float x = mouseX;
  float y = mouseY;
  // rose
  if ((x > 200 && x < 400) && (y > 0 && y < 200)) {
    rose = !rose;
  }
  // clean
  if ((x > 400 && x < 600) && (y > 0 && y < 200)) {
    clean = !clean;
  }

  // beer
  if ((x > 200 && x < 400) && (y > 200 && y < 400)) {
    øl = !øl;
  }
  // Mow
  if ((x > 400 && x < 600) && (y > 200 && y < 400)) {
    mow = !mow;
  }

  // cash
  if ((x > 200 && x < 400) && (y > 400 && y < 600)) {
    cash = !cash;
  }
  // tøj
  if ((x > 400 && x < 600) && (y > 400 && y < 600)) {
    tøj = !tøj;
  }
}

void morGlad() {
  if ((rose && clean) && (farGlad && søsGlad)) {
    fill(0, 255, 0);
    text("Mor", 35, 130);
    morGlad = true;
  } else {
    fill(255, 0, 0);
    text("Mor", 35, 130);
    morGlad = false;
  }
}

void farGlad() {
  if ((øl && mow) && (søsGlad)) {
    fill(0, 255, 0);
    text("Far", 40, 330);
    farGlad = true;
  } else {
    fill (255, 0, 0);
    text ("Far", 40, 330);
    farGlad = false;
  }
}

void søsSmil () {
  if (cash || tøj) {
    fill(0, 255, 0);
    text("Søs", 40, 530);
    søsGlad = true;
  } else {
    fill(255, 0, 0);
    text("Søs", 40, 530);
    søsGlad = false;
  }
}
