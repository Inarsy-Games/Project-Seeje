shader_set(aReplaceColour);

shader_set_uniform_f(sh_handle_range, 1);

shader_set_uniform_f(sh_handle_match, 
	colourMatch.toShaderValue(colourMatch.red),
	colourMatch.toShaderValue(colourMatch.green),
	colourMatch.toShaderValue(colourMatch.blue),
);

shader_set_uniform_f(sh_handle_replace, 
	colourReplace.toShaderValue(colourReplace.red),
	colourReplace.toShaderValue(colourReplace.green),
	colourReplace.toShaderValue(colourReplace.blue),
);

if !circle_shadow
draw_sprite_ext(sprite_index, image_index, x+shadow_dist, y+shadow_dist, image_xscale, image_yscale, image_angle, c_black, 1);
else {
	draw_sprite_ext(sShadow, 0, x, y-2, shadow_xscale, shadow_yscale, 0, c_black, 1);
}

shader_reset();

depth = -y;
draw_self();