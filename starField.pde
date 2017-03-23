Star[] stars = new Star[800];

float speed;
PFont font;

void setup() {
    fullScreen();
    //size(800, 600);
    for (int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
    }
    font = loadFont("ArialMT-20.vlw");
    textFont(font);
    textSize(20);
    speed = 0.1;
    fill(255);
}

void draw() {
    //speed = map(mouseX, 0, width, 0, 50);
    background(0);
    translate(width/2, height/2);
    text("Press UP to start moving, W to jump to hyperspace, DOWN to stop.", -width/2, -height/2 + 25);
    for (int i = 0; i < stars.length; i++) {
        stars[i].update();
        stars[i].show();
    }
}

void keyPressed() {
    if(key == CODED) {
        if(keyCode == UP) {
            speed = 10;
        }
        else if(keyCode == DOWN) {
            speed = 0.1;
        }
    }
    else if(key == 'w' || key == 'W') {
        speed = 60;
    }
}