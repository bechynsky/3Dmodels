
difference() {
    union() {
        cube ([30,38,10]);
        translate ([20/2,38/2,0]){
            cylinder (h = 20, d = 20);
        }
    }

    translate([(15.2/2) + ((20-15.2)/2), 38/2, 3]) {
        cylinder(h=17, d = 15.2);
    }
    
    translate([(12.5/2) + ((20-12.5)/2), 38/2, 0]) {
        cylinder(h=4, d = 12.5);
    }
    
    cylinder(h=10, d=20);
    
    translate([0,38,0]) {
        cylinder(h=10, d=20);
    }

    translate([15,8,5]) {
        rotate(a=[0,90,0]){
            cylinder(h=15, d=2.5, $fn=30);
        }
    }

    translate([15,30,5]) {
        rotate(a=[0,90,0]){
            cylinder(h=15, d=2.5, $fn=30);
        }
    }   
}

