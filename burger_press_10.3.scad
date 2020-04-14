$fn = 100;

press_diameter = 103;

cylinder(4, press_diameter / 2, press_diameter / 2);

translate([0, 0, 16]) {
    sphere(press_diameter * 0.15);
}