
screw_hole_radius = 2.1;

module rounded_box(l, w, h) {
    cylinder(h, w/2, w/2, $fn = 20);
    
    translate([l - w, 0, 0]) {
        cylinder(h, w/2, w/2, $fn = 20);
    }
    
    translate([0, -w/2, 0]) {
        cube([l-w, w, h]);
    }
}

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
    

difference() {
    body();
    translate([20, 0, 0]) {
        cylinder(4, screw_hole_radius, screw_hole_radius, $fn = 20);
    }
}

translate ([0, 20, 0]) {
    color([0, 1, 0]){
        difference() {
            body();
            translate([48, -5, 2]){    
                rotate([-90, 0, 0]){
                    cylinder (10, 1, 1, $fn = 20);
                }
            }
            
            translate([20, 0, 0]) {
                rounded_box(6, 4.1, 4);
            }          
        }
    }
}
