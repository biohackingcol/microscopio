include <parameters.scad>
difference()
{
    square(size = [rectX,rectY], center =false);

    translate([borderX,rectY-rectY/2,0])
    {
        circle(d=screwD,$fn=cr);
    }    

    translate([side-borderX,rectY-rectY/2,0])
    {
        circle(d=screwD,$fn=cr);
    }
    
    translate([rectX/2,rectY/2,0])
    {
        square(size=slideY-5,center=true);
    }

}