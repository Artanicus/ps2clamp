// Clamp for attaching 2xPS2 connectors to a serial-port-like screw setup

// Measurements
length = 50;
width = 20;
thickness = 5;

PS2radius=6;
screwradius=1.5;

difference(){
  cube(size = [length, width, thickness], center = false);
  
  // Carve out PS2 connector sized holes centered
  translate([16,10,-1])
    #cylinder(h = thickness+2, r1=PS2radius, r2=PS2radius, $fn=1000);
  translate([16+18,10,-1])
    #cylinder(h = thickness+2, r1=PS2radius, r2=PS2radius, $fn=1000);
  
  // Carve out screw holes
  translate([4.5,10,-1])
    #cylinder(h = thickness+2, r1=screwradius, r2=screwradius, $fn=1000);
  translate([length-4.5,10,-1])
    #cylinder(h = thickness+2, r1=screwradius, r2=screwradius, $fn=1000);
}
