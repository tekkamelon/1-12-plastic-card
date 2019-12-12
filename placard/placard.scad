module target(){
    rotate([0,90,0])
        cylinder(h = 55, r = 1.5, $fn = 40);
}
    
module tool(){
    union(){
        translate([13.5,0,2])
            cube(size=[20, 40, 1], center=true);    
        translate([13.5,0,1.5])
            cube(size=[20, 1.5, 1.5], center=true);
    }
}

union(){
    target();
    tool();
}