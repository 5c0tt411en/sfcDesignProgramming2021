import processing.sound.*;
SoundFile bd, sn, hh, st1, st2;

ArrayList<SoundPlayer> sp;
ArrayList<SoundObject> so;

void setup() {
    size(800, 600);
    sp = new ArrayList<SoundPlayer>();
    so = new ArrayList<SoundObject>();
    bd = new SoundFile(this, "bd1.aif");
    sn = new SoundFile(this, "sn1.aif");
    hh = new SoundFile(this, "hh1.aif");
    st1 = new SoundFile(this, "st1.wav");
    st2 = new SoundFile(this, "st2.wav");
}

void draw() {
    background(0);
    for (int i = 0; i < sp.size(); i++) {
        if (sp.get(i).count == 0)
            for (int j = 0; j < so.size(); j++) {
                if (dist(sp.get(i).x, sp.get(i).y, so.get(j).x, so.get(j).y) < sp.get(i).d / 2)
                    switch (so.get(j).pressedKey) {
                    case '5': 
                        bd.play(); 
                        break;
                    case '6': 
                        sn.play(); 
                        break;
                    case '7': 
                        hh.play(); 
                        break;
                    case '8': 
                        st1.play(); 
                        break;
                    case '9': 
                        st2.play(); 
                        break;
                    }
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
    if (key == '5' || key == '6' || key == '7' || key == '8' || key == '9')
        so.add(new SoundObject(key, mouseX, mouseY));
}
