include <../conf/parameters.scad>
use <../parts/crossbar.scad>
use <../parts/support_plate.scad>
use <../parts/stand.scad>
use <../parts/foot.scad>

$fn=10;

explode=0;

rotate([0,0,45])
crossbar();

translate([0,0,explode])
rotate([180,0,-45])
crossbar();

translate([0,0,explode*2])
translate([0,0,(frame_outer+support_height)/2])
support_plate();

translate([0,0,explode*-1])
translate([0,0,-(frame_outer+support_height)/2])
support_plate();

translate([0,0,explode*-2])
for (i = [0:3]) {
rotate([0,0,i*90])
translate([stand_width/2,stand_width/2,-stand_height/2])
stand();
}

translate([0, stand_width/2, -stand_height])
foot();
translate([0, -stand_width/2, -stand_height])
foot();
