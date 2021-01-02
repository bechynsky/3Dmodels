$fn = 100;

difference() {
    cube([20,2,20]);
    translate([10, 2, 10]) {
        rotate([90, 0, 0]){
            cylinder(2, r = 1);
        }
    }
}
    
cube([2,20,20]);
translate([-18,20,0]) {
    cube([20,2,20]);
}

translate([-18,5,0]) {
    cube([2,15,20]);
}

