include <../conf.scad>

module rack_mount() {

color("grey")
cylinder(rack_height, d=rack_diameter, center=true);

}

rack_mount();