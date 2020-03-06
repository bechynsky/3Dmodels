diameter_out = 21 / 2;
diameter_in = 16.3 / 2;
height = 20;
inner_height = 2;


$fn = 50;

difference() {
    union() {
        cylinder(height, diameter_out, diameter_out);
        translate([0, 0, height]) {
            sphere(diameter_out);
        }
    }
    
    cylinder(height - inner_height, diameter_in, diameter_in);
}
