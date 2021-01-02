 $fn = 200;
 difference(){
     cylinder(18, 39/2, 36/2);
     translate([0, 0, 2]) {
        cylinder(16, 32/2, 32/2);
     }
     
     cylinder(2, 5, 5);
     
     for (i = [0:11]) {
         rotate([0, 0, 30*i]){
             translate([13, 0, 0]) {
                 cylinder(2, 2, 2);
             }
         }
     }
     
     for (i = [0:11]) {
         rotate([0, 0, (30*i) + 15]){
             translate([9, 0, 0]) {
                 cylinder(2, 2, 2);
             }
         }
     }
 }