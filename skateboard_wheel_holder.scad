$fn = 100;
wheel = 70;
height = wheel/2;

difference() {
    cube([wheel*1.1, wheel, height]);
    translate([(wheel/4)*1.4, wheel/4, 0]) {
        cylinder(height,wheel/2,wheel/2);
    }
    
    // screew hole
    translate([(wheel/4)*1.4 + wheel/2 - 1, wheel/4, height/2]) {
        rotate([0,90,0]){    
            cylinder(height,4,4);
            cylinder(4,6,6);
        }
   }       
}
 
