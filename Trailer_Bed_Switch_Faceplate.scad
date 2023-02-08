// Cover Plate
// rnavarro
// v0.6.0

translate([0, 0, 1.5]) union() {
    difference() {
        hull() {
            // Top face
            // Cube Z is divided by 2 since center=true
            // so actual plate thickness is 2
            // (1z / 2) + 1.5 (from translate)
            translate([0, 0, 25]) cube([50, 65, 1], center=true);
            
            // Bottom face
            cube([70, 90, 3], center=true);
        }
        
        // Top face opening
        translate([0, 0, 20]) cube([21, 38, 20], center=true); 
        
        // Back face opening
        // Cube Z is divided by 2 since center=true
        translate([0, 0, 0]) cube([50, 60, 46], center=true);
        
        // Top screw hole
        union() {
            // Screw outer hole
            translate([0, 40, 0]) cylinder(h=20, d=8.5);
            
            // Screw inner hole
            translate([0, 40, -5]) cylinder(h=30, d=4);
        }
        
        // Bottom screw hole
        mirror([0, 1, 0]) union() {
            // Screw outer hole
            translate([0, 40, 0]) cylinder(h=20, d=8.5);
            
            // Screw inner hole
            translate([0, 40, -5]) cylinder(h=30, d=4);
        }
    }
}
