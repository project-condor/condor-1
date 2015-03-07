include <../conf.scad>

module support_plate() {

color("silver")
difference() {

	cube([support_width, support_width, support_height], true);

	cylinder(support_height+epsilon,d=support_diameter, center=true);

	for (i = [0 : 3]) {
		rotate([0,0,i*90])
		translate([support_inner/2, support_inner/2,0])
		cylinder(support_height+epsilon,d=support_diameter, center=true);
	}
}
}

support_plate();
