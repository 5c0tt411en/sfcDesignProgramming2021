import processing.sound.*;
SoundFile sf;

void setup() {
    sf = new SoundFile(this, "sample.aiff");
}

void draw() {
}

void  keyPressed() {
    if (key == ENTER) sf.play();
}
