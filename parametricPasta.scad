
module pasta(parts, radius, pasta_twist, pasta_height, separation_radius, flat)
{

	for(i = [0:parts])
	{


		linear_extrude(height = pasta_height, center = true, convexity = 10,
							 twist = pasta_twist, slices = 200, $fn = 200)
		rotate([0, 0, i*360/parts])
		translate([separation_radius, 0, 0])

	if(flat){square(([1,radius]));}
	else{circle(r = radius);}
	}

}

/* // Spagetti.
parts = 1;
radius = .1;
pasta_twist = 400;
pasta_height = 10;
separation_radius = 2;
flat = false;
//*/

/* // Thin Spagetti.
parts = 1;
radius = .05;
pasta_twist = 400;
pasta_height = 10;
separation_radius = 2;
flat = false;
//*/

//*
// Linguini.
parts = 1;
radius = .05;
pasta_twist = 400;
pasta_height = 10;
separation_radius = 2;
flat = true;
//*/

/*// Penne.
parts = 10;
radius = .4;
pasta_twist = 0;
pasta_height = 10;
separation_radius = 1;
flat = false;
//*/

/*// Ziti.
parts = 40;
radius = .2;
pasta_twist = 0;
pasta_height = 4;
separation_radius = 1;
flat = false;
//*/

/*// Twisty
parts = 10;
radius = .4;
pasta_twist = 200;
pasta_height = 8;
separation_radius = 1;
flat = false;
//*/

/*// Super twisty.
parts = 10;
radius = .4;
pasta_twist = 1000;
pasta_height = 8;
separation_radius = 1;
flat = false;
//*/

// Curvy.
parts = 1;
radius = .1;
pasta_twist = 10000;
pasta_height = 8;
separation_radius = .5;
flat = false;
//*/


pasta(parts, radius, pasta_twist, pasta_height, separation_radius, flat);
