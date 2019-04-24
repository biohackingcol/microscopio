# This is a CadQuery script template
# Add your script code below
import cadquery as cq

from parameters import *

# make the base
slideBase = cq.Workplane("XY").box(slideBaseWidth, slideBaseHeight, baseThickness)\
.faces(">Z").workplane() \
.pushPoints([(-slideBaseWidth/2+screwDiameter,0),(slideBaseWidth/2 - screwDiameter,0)])\
.hole(screwDiameter)\
.faces(">Z").workplane() \
.rect(slideHoleWidth, slideHoleHeight, centered=True, forConstruction=False)\
.cutThruAll()

# Render the solid
#show_object(slideBase)