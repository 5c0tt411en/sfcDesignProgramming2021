import controlP5.*;

ControlP5 cp5;

void setup() {
    size(512, 512);
    cp5 = new ControlP5(this);
    for (int i = 0; i < 3; i++) {
        cp5
            .addSlider("sl" + str(i + 1))
            .setRange(1, 512)
            .setSize(200, 20)
            .setPosition(10, 10 + i * 30);
    }
}

void draw() {
    background(255);
    for (int i = 0; i < (int)cp5.getValue("sl1"); i++) {
        float n = noise(float(i) / cp5.getValue("sl2")) * cp5.getValue("sl3");
        stroke(120, i / 2, 255 - i / 2);
        line(i, 0, i, n);
        stroke(i / 2, 120, 255 - i / 2);
        line(width - i, height, width - i, height - n);
    }
}
