- click sprite 
- go to material
- select new shader material 
- then shader and new shader
- shader code does not use gd script. 
- this shader code will give greyscale
`shader_type canvas_item;
render_mode unshaded;

void fragment(){
	COLOR = texture(TEXTURE, UV);
	float lumi = (COLOR.r + COLOR.g + COLOR.b) / 3.0;
	COLOR.rgb = vec3(lumi);
}`

canvas item is for 2d rendering
unshaded = dont consider lighting effect
fragment() will run on every single pixel on screen 
	reads the texture image to the COLOR variable
	average the RGB values and divides by 3
	
- omg CTRL+ K for comments. 

- change lumi line for better weighted values 
`float lymi = COLOR.r * 0.2126 + COLOR.g * 0.7152 + COLOR.b * 0.0722;`

