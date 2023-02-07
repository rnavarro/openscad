// Cover Plate
// rnavarro
// v0.5.0

translate([0, 0, 1.5]) union() {
    difference() {
        hull() {
            // Top face
            translate([0, 0, 20]) cube([50, 65, 1], center=true);
            
            // Bottom face
            cube([70, 90, 3], center=true);
        }
        
        // Top face openin
        translate([0, 0, 20]) cube([22, 38, 20], center=true); 
        
        // Back face opening
        translate([0, 0, 0]) cube([50, 60, 36], center=true);
        
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