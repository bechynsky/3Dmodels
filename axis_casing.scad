diameter_out = 6 / 2;
diameter_in = 2 / 2;
height = 9;
washer_diameter_out = 11 / 2;
washer_height = 2;

hole_through = false;

$fn = 50;

difference() {
    union() {
        cylinder(height + washer_height, diameter_out, diameter_out);
        cylinder(washer_height, washer_diameter_out, washer_diameter_out);
    }
    
    if (hole_through) {
            cylinder(height + washer_height, diameter_in, diameter_in);
    } else {
        translate([0, 0, washer_height]) {
            cylinder(height, diameter_in, diameter_in);
        }
    }
}

translate([(washer_diameter_out * 2) + 2, 0, 0]) {
    difference() {
        cylinder(washer_height, washer_diameter_out, washer_diameter_out);
        cylinder(washer_height, diameter_out + 0.5, diameter_out + 0.5);
    }
}