include <../conf.scad>

module rack_plate() {
color("gray")
difference() {
	cube([rack_width, rack_width, rack_plate_height], center=true);
	for (i=[0:3]) {
		rotate([0,0,i*90])
		translate([rack_inner/2, rack_inner/2, 0])
		cylinder(rack_plate_height+epsilon, d=rack_diameter, center=true);
	}
	
}
}

rack_plate();