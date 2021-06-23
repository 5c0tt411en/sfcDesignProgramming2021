import processing.sound.*;
SoundFile bd;

ArrayList<SoundPlayer> sp;
ArrayList<SoundObject> so;

void setup() {
    size(800, 600);
    sp = new ArrayList<SoundPlayer>();
    so = new ArrayList<SoundObject>();
    bd = new SoundFile(this, "bd1.aif");
}

void draw() {
    background(0);
    for (int i = 0; i < sp.size(); i++) {
        if (sp.get(i).count == 0)
            for (int j = 0; j < so.size(); j++) {
                if (dist(sp.get(i).x, sp.get(i).y, so.get(j).x, so.get(j).y) < sp.get(i).d / 2)
                    bd.play();
            }
        sp.get(i).draw();
    }
    for (int i = 0; i < so.size(); i++) {
        so.get(i).update();
        so.get(i).draw();
    }
}

void keyReleased() {
    if (key == '1' || key == '2' || key == '3' || key == '4')
        sp.add(new SoundPlayer(key, mouseX, mouseY));
    if (key == '5')
        so.add(new SoundObject(mouseX, mouseY));
}
