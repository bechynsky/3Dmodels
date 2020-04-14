cylinder(2, 20, 20, $fn = 50);

translate([0, 0, 6]) {
    translate([11, 0, 0]) {
        cube([3.5, 3.5, 8], center = true); 
    }
    translate([-11, 0, 0]) {
        cube([3.5, 3.5, 8], center = true); 
    }
}

translate([0, 0, 4]) {    
    translate([12, 12, 0]) {
        cube([4, 4, 4], center = true); 
    }
    
    translate([-12, 12, 0]) {
        cube([4, 4, 4], center = true); 
    }
    
    translate([-12, -12, 0]) {
        cube([4, 4, 4], center = true); 
    }
    
    translate([12, -12, 0]) {
        cube([4, 4, 4], center = true); 
    }
}