difference() {
    cube([7.5+2+2, 24+2+2, 4]);
    translate([2,2,0]) {
        cube([7.5, 24, 4]);
    }
    
    translate([0,6,0]) {
        cube([2, 16, 4]);
    }
}