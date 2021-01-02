$fn = 50;
t = 2;

module holder() {
    union() {
        difference() {
            cube([45, 60, t]);
            cube([25, 30, t]);
            translate([35, 10, 0]) {
                cylinder(t, 1.5, 1.5);
            } 
            
            translate([35, 50, 0]) {
                cylinder(t, 1, 1);
            } 
        }
    }
}

holder();
mirror([1, 0, 0]) {
    holder();
}