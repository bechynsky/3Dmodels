$fn = 50;
t = 2;
module screw_hole() {
        cylinder(t, d=2.5);
}

module side_holder() {
    difference() {
        cube([t,4,7.5]);
        translate([0, 2, 4.1]) {
            rotate([0,90,0]){
                screw_hole();
            }
        }
    }
}




difference(){
    cube([60,t,5]);

    translate([4, t, 5/2]){
        rotate([90,0,0]){
            screw_hole();
        }
    }
    
    translate([60-4, t, 5/2]){
        rotate([90,0,0]){
            screw_hole();
        }
    }
}

translate([60/2 - t/2, 0, 0]) {
    cube([t,68,5]);
}

translate([60/2 - t/2, 68 - 4, 5]) {
    side_holder();
}

translate([60/2 - t/2, 68 - 4 - 38, 5]) {
    side_holder();
}