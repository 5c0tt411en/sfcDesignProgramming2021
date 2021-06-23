ArrayList <Integer> x, y;

void setup() {
    size(500, 500);
    x = new ArrayList<Integer>();
    y = new ArrayList<Integer>();
}

void draw() {
    background(0);
    for (int i = 0; i < x.size(); i++) {
        ellipse(x.get(i), y.get(i), 10, 10);
    }
}

void mouseReleased() {
    x.add(mouseX);
    y.add(mouseY);
}
