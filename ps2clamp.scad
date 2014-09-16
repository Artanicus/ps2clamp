// Clamp for attaching 2xPS2 connectors to a serial-port-like screw setup

// Measurements
length = 50;
width = 20;
thickness = 5;

PS2radius=6;
screwradius=1.5;

difference(){
  // create the cylinder to fit the Oras holder
  cube(size = [length, width, thickness], center = false);
  // carve out cone socket to fit the shower piece, position it closer to the front to strengthen the back
  translate([15,0,0])
    #cylinder(h = thickness+1, r1=PS2radius);
}
