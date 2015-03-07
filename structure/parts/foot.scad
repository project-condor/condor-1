include <../conf.scad>

module foot() {

color("white")
difference() {

	rotate([0,90,0])
	difference() {
		cylinder(foot_length,d=foot_outer, center=true);
		cylinder(foot_length+epsilon,d=foot_inner, center=true);
	}

	translate([-stand_width/2,0,0])
	cylinder(foot_outer,d=stand_diameter,center=false);

	translate([stand_width/2,0,0])
	cylinder(foot_outer,d=stand_diameter,center=false);

}
}

foot();
