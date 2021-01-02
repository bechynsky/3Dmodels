$fn = 20;
difference() {
    cube([10,20,2]);
    translate([5, 2, 0]) {
        cylinder(2,2,1);
    }
}