# This is a CadQuery script template
# Add your script code below
import cadquery as cq

from parameters import *

hubSides = 6
hubDiameter = microWidth/6
nutThickness = baseThickness
polySides= 8
polyDiameter = hubDiameter/2
# make the base
wingNut = cq.Workplane("XY").polygon(hubSides, hubDiameter)\
.vertices().polygon(polySides,polyDiameter)
wn = wingNut.rotateAboutCenter((0,0,0),180)\
.extrude(nutThickness)

#there can be any spaces nor comments after the \
#.rotate((0,0,0),(1,1,0),45)\
#.vertices().each()polygon(5,hubDiameter/2)\

#def rotatePolygon(polysides = 3, polyDiameter = 1, rotationAngle=0,
#point1=(0,0,0), point2 = (0,0,1)):
#	polygon(polySides,polyDiameter)
#	rotate

# Render the solid
#if we uncomments show_object it gives error when trying to use the object as a reference for another code
show_object(wn)