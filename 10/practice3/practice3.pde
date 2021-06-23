import controlP5.*;
import processing.pdf.*;

ControlP5 cp5;

Boolean savePDF = false, displayTxt = false;
String filePath;

void setup() {
    size(512, 512);
    cp5 = new ControlP5(this);
    for (int i = 0; i < 3; i++) {
        cp5.addSlider("sl" + str(i + 1)).setRange(1, 512).setSize(200, 20).setPosition(10, 10 + i * 30);
    }
    cp5.addButton("save_button").setSize(60, 20).setPosition(10, 100);
}

void draw() {
    background(255);
    if (savePDF)
        beginRecord(PDF, filePath);

    for (int i = 0; i < (int)cp5.getValue("sl1"); i++) {
        float n = noise(float(i) / cp5.getValue("sl2")) * cp5.getValue("sl3");
        stroke(120, i / 2, 255 - i / 2);
        line(i, 0, i, n);
        stroke(i / 2, 120, 255 - i / 2);
        line(width - i, height, width - i, height - n);
    }

    if (savePDF) {
        endRecord();
        savePDF = false;
    }
    fill(0);
    if (displayTxt)
        text("file has been saved at " + filePath, 10, height - 20);
}

void save_button() {
    savePDF = true;
    filePath = "export/" + str(hour()) + "_" + str(minute()) + "_" + str(second()) + ".pdf";
    displayTxt = true;
}
