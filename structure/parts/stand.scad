include <../conf.scad>

module stand() {

union() {

	color("silver")
	cylinder(stand_height,d=stand_diameter, center=true);

	color("grey")
	translate([0,0,stand_height/2])
	cylinder(stand_head_height,d=stand_head_diameter, center=false);

}
}

stand();
