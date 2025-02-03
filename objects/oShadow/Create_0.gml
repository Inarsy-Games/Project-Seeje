colour = function(r,g,b) constructor {

	red = r;
	blue = b;
	green = g;
	
	static toShaderValue = function(value) {
		return value / 255;	
	}
	
}

colourMatch = new colour(0,0,0);
colourReplace = new colour(24,20,37);

sh_handle_range = shader_get_uniform(aReplaceColour, "range");
sh_handle_match = shader_get_uniform(aReplaceColour, "colourMatch");
sh_handle_replace = shader_get_uniform(aReplaceColour, "colourReplace");

xscale_div = 1/sprite_get_width(sShadow);
shadow_xscale = xscale_div*sprite_width + (xscale_div*2);
shadow_yscale = 1;