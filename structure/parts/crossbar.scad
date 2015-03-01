include <../conf/parameters.scad>

module crossbar() {

module bar(length,outer,inner) {
	difference() {
		cube([outer, outer, length], true);
		cube([inner, inner, length], true);
		translate([outer/2,0,0])
		cube([outer, outer, outer], true);
	}
}

plate_distance=support_inner*sqrt(2)/2;
rack_distance=rack_inner*sqrt(2)/2;
stand_distance=stand_width*sqrt(2)/2;

difference() {

	//bar
	rotate([90,-90,90])
	bar(frame_length, frame_outer, frame_inner);

	//center hole
	cylinder(frame_outer+epsilon,d=support_diameter,center=true);

	for(i=[0:1]) {
		rotate(i*180){
			
			//plate screw hole
			translate([plate_distance,0,0])
			cylinder(frame_outer+epsilon,d=support_diameter,center=true);

			//rack hole
			translate([rack_distance,0,0])
			cylinder(frame_outer+epsilon,d=rack_diameter,center=true);

			//stand hole
			translate([stand_distance,0,0])
			cylinder(frame_outer+epsilon,d=stand_head_diameter,center=true);

			//motor holes
			translate([motor_hole_distance,0,0]){
				cylinder(frame_outer+epsilon,d=motor_hole_diameter,center=true);
				translate([motor_mount_distance/2,0,0])
				cylinder(frame_outer+epsilon,d=motor_mount_diameter,center=true);
				translate([-motor_mount_distance/2,0,0])
				cylinder(frame_outer+epsilon,d=motor_mount_diameter,center=true);
			}

		}
	}
}
}

crossbar();
