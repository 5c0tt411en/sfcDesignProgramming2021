ArrayList<Particle> p;

void setup() {
    size(500, 500);
    p = new ArrayList<Particle>();
}

void draw() {
    background(0);
    for (int i = 0; i < p.size(); i++) {
        p.get(i).update();
        p.get(i).display();
    }
}

void mouseReleased() {
    p.add(new Particle(mouseX, mouseY, random(10, 30), random(1, 5), random(1, 5)));
}
