# This is a CadQuery script template
# Add your script code below
import cadquery as cq

from parameters import *


# make the base
base = cq.Workplane("XY").box(microWidth, microHeight, baseThickness)\
.faces(">Z").workplane() \
.pushPoints([(microWidth/2-screwBorderOffset,microHeight/2-screwBorderOffset),(-microWidth/2+screwBorderOffset,microHeight/2-screwBorderOffset),(0,-microHeight/2+screwBorderOffset)])\
.hole(screwDiameter)

# Render the solid
#if we uncomments show_object it gives error when trying to use the object as a reference for another code
#show_object(base)