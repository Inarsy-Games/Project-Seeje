//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float range;
uniform vec4 colourMatch;
uniform vec4 colourReplace;

void main()
{
	vec4 pixelColour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float newRange = range / 255.0;
	
	if(abs(pixelColour.r - colourMatch.r) <= newRange) {
		if(abs(pixelColour.g - colourMatch.g) <= newRange) {
			if(abs(pixelColour.b - colourMatch.b) <= newRange) {
				
				pixelColour.rgb = colourReplace.rgb;
				
			}
		}	
	}
	
    gl_FragColor = pixelColour;
}
