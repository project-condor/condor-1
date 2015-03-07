include <../conf.scad>
use <../parts/crossbar.scad>
use <../parts/support_plate.scad>
use <../parts/stand.scad>
use <../parts/foot.scad>
use <../parts/rack_mount.scad>
use <../parts/rack_plate.scad>

$fn=10;

explode=0;

module main(explode=0) {
	translate([0,0,-explode])
	rotate([0,0,45])
	crossbar();

	translate([0,0,explode])
	rotate([180,0,-45])
	crossbar();
}

module support(explode=0) {
	translate([0,0,explode])
	translate([0,0,(frame_outer+support_height)/2])
	support_plate();

	translate([0,0,-explode])
	translate([0,0,-(frame_outer+support_height)/2])
	support_plate();
}

module stands(explode=0) {
	translate([0,0,-explode])
	for (i = [0:3]) {
		rotate([0,0,i*90])
		translate([stand_width/2,stand_width/2,-stand_height/2 - frame_outer/2])
		stand();
	}
}

module feet(explode=0) {
	translate([0,0,-explode]) {
		translate([0, stand_width/2, -stand_height - frame_outer/2])
		foot();
		translate([0, -stand_width/2, -stand_height - frame_outer/2])
		foot();
	}
}
module rack_mounts(explode=0) {
	translate([0,0,explode])
	for (i = [0:3]) {
		rotate([0,0,i*90])
		translate([rack_inner/2,rack_inner/2,0])
		rack_mount();
	}

}

main(explode);
support(explode*2);
stands(explode*3);
feet(explode*4);

rack_mounts(explode*10);
translate([0,0,30])
rack_plate();
translate([0,0,70])
rack_plate();
translate([0,0,-40])
rack_plate();
translate([0,0,-110])
rack_plate();


