use <OpenSCAD_lib/simpletext.scad>;

h = 5;						// letter height
b = 2;						// emboss height

orange = [242/255, 131/255, 32/255];
darkgreen = [15/255, 58/255, 45/255];
red = "firebrick";
grey = "lightslategray";
yellow = "gold";

fg = orange;					// foreground colour
blocks = darkgreen;			// block colour
bg = "grey";					// background colour

if (1)
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