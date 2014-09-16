// The top piece is based on the Oras oval-shaped socket for shower handles. It's meant to sit pretty tight.

// total length of the piece
length = 60;

// Oras config
orasR = 13.5;

// no-name brand shower head config
socketRbottom = 9;
socketRtop = 11;

difference(){
  // create the cylinder to fit the Oras holder
  cylinder(length, r=orasR);
  // carve out cone socket to fit the shower piece, position it closer to the front to strengthen the back
  #cylinder(length+10, r1=socketRbottom, r2=socketRtop);
  
  // slice open the front for easy insertion
  translate([5,-7.5,0]) cube([15, 15, 70], center = false);
}
