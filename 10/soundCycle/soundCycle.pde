import processing.sound.*;
SoundFile bd;

ArrayList<SoundPlayer> sp;

void setup() {
    size(800, 600);
    sp = new ArrayList<SoundPlayer>();
    bd = new SoundFile(this, "bd1.aif");
}

void draw() {
    background(0);
    for (int i = 0; i < sp.size(); i++) {
        if (sp.get(i).count == 0)
            bd.play();
        sp.get(i).draw();
    }
}

void keyReleased() {
    sp.add(new SoundPlayer(mouseX, mouseY));
}
