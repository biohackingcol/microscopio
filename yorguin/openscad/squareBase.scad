include <parameters.scad>
difference()
{
    square(size = side, center = false);
//superior izquierdo
    translate([borderX,side-borderY,0])
    {
        circle(d=screwD,$fn=cr);
    }    
//superior derecho
        translate([side-borderX,side-borderY,0])
    {
        circle(d=screwD,$fn=cr);
    }

//inferior
    translate([side/2,borderY,0])
    {
        circle(d=screwD,$fn=cr);
    }
}