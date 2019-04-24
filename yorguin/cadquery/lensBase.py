# This is a CadQuery script template
# Add your script code below
import cadquery as cq

from base import *

# copy the base already done

lensBase = base

lensBase = lensBase.faces(">Z").workplane() \
.pushPoints([(0,microHeight/2-screwBorderOffset)])\
.hole(lensDiameter)


# Render the solid
#show_object(lensBase)