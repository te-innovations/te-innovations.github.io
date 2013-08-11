use <OpenSCAD_lib/simpletext.scad>;

h = 5;						// letter height
b = 2;						// emboss height
fg = "firebrick";				// foreground colour
blocks = "lightslategray";	// block colour
bg = "gold";					// background colour

if (0)
{	
	//translate([0, 20, 0])
	logo();
}
else
{
	name();
}

module name()
{
	
	logo();
	
	translate([40, 0, 0])
	{
		color(fg)
			text("innovations", size = 6, height = h, align = "L");
	}

}

module logo()
{
	T();
	
	translate([20, 0, 0])
		E();

	color(bg)
		translate([-2, -2, -b])		// base plate
			cube([40, 20, b]);
}

module T()
{
	color(fg)
		cube([16, 16, h]);
	color(blocks)
	{
		translate([-1, -1, -b/2])
			cube([7, 13, h+b]);
		translate([10, -1, -b/2])
			cube([7, 13, h+b]);
	}
}

module E()
{
	color(fg)
		cube([16, 16, h]);
	color(blocks)
	{
		translate([4, 10, -b/2])
			cube([13, 2, h + b]);
		translate([4, 4, -b/2])
			cube([13, 2, h + b]);
	}
}