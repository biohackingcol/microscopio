
include <parameters.scad>
difference()
{
    square(size = side, center = false);

    translate([borderX,side-borderY,0])
    {
        circle(d=screwD,$fn=cr);
    }    

    translate([side-borderX,side-borderY,0])
    {
        circle(d=screwD,$fn=cr);
    }

    translate([side/2,borderY,0])
    {
        circle(d=screwD,$fn=cr);
    }
    
    //lens hole over the slide hole
    
        translate([rectX/2,side-borderY,0])
    {
        circle(d=lensD,$fn=cr);
    }
}