cr=100;
internalD=10;
E=1;
M=3;
externalD=M*internalD;
sides=5;
angleSpacing=360/sides;
radialScale=1;
tangentScale=1;

///rotate(a=[0,0,360/sides])

union(){
{
    circle(internalD,$fn=sides);
}

for(i = [1:1:sides]) 
    {
        translate([E*externalD*cos(i*angleSpacing),E*externalD*sin(i*angleSpacing),0])
        
            {
                
                //circle(internalD/4,$fn=sides);
                
                //use this to produce biohacking canonical nut externalD=1.25internalD, M=E and radialScale=0.75 , tangentScale=0.4
                
                rBias = radialScale*externalD;  // semi-minor axis
                tBias = tangentScale*internalD; // semi-major axis
                
                //use this to produce a gear like negative form with externalD=3internalD M=3, E=1 and radialScale=1 , tangentScale=1
                //rBias = radialScale*externalD/4;  // semi-minor axis
                //tBias = tangentScale*internalD; // semi-major axis
                
                //use this to produce a flower with externalD=3internalD E=1, M=3 and radialScale=1 , tangentScale=1
                //rBias = radialScale*externalD;  // semi-minor axis
                //tBias = tangentScale*internalD; // semi-major axis
              
                
                rotate(a=[0,0,i*360/sides])
                {
                    polygon(
                    [ 
                        for (k = [0 : 1 : sides -1]) 
                        
                        [rBias * sin(k*360/sides), tBias * cos(k*360/sides)] 
                    ]
                            );
                }
                
            }
    }
    
    
}