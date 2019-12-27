
module body() {
    difference() {
        union() {
            difference() {
                union(){
                    cylinder(4, 8, 8);
                    translate([0, -5, 0]) {
                        cube([50, 10, 4]);
                    }
                }
                translate([-18, 0, 0]) {
                    cylinder(4, 20, 20);
                }
            }
        }
        
        translate([20, 0, 0]) {
            cylinder(4, 2, 2, $fn = 20);
        }
    }
}

module body_sides() {
    difference() {
        cube([4, 3, 9]);
        translate([2, 0, 7]){    
            rotate([-90, 0, 0]){
                cylinder (3, 1, 1, $fn = 20);
            }
        }
    }
}


translate([46, 0, 0]) {
    translate([0, 5, 0]){
        body_sides();
    }
    translate([0, -8, 0]){
        body_sides();
    }
}
    
body();

translate ([0, 20, 0]) {
    color([0, 1, 0]){
        difference() {
            body();
            translate([48, -5, 2]){    
                rotate([-90, 0, 0]){
                    cylinder (10, 1, 1, $fn = 20);
                }
            }
        }
    }
}
