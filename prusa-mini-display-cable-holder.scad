// size of aluminium profile
width = 30;

// height of cable
cable_height = 1;

// holder width
holder_width = 10;

// border
border = 2;

difference () {
    cube([(width / 3) + cable_height + border, width + border, holder_width], center = true);
    cube([(width / 3) + cable_height, width, holder_width], center = true);
    translate ([(width / 6) + border / 2, 0, 0]) {
        cube([border, width - 5, holder_width], center = true);
    }    

}

