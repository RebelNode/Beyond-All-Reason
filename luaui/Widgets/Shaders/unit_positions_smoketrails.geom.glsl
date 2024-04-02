#version 330
#extension GL_ARB_uniform_buffer_object : require
#extension GL_ARB_shading_language_420pack: require

// This shader is (c) Beherith (mysterme@gmail.com)

//__ENGINEUNIFORMBUFFERDEFS__
//__DEFINES__

layout(points) in;
layout(triangle_strip, max_vertices = MAXVERTICES) out; // at least 1024/ numfloats output, and builtins like gl_Position counts as 4 floats towards this
#line 20013

uniform float addRadius = 0.0;
uniform float iconDistance = 20000.0;

uniform sampler2D unitPosTexture;

in DataVS {
	uint v_numvertices;
	float v_rotationY;
	vec4 v_color;
	vec4 v_lengthwidthcornerheight;
	vec4 v_centerpos;
	vec4 v_emitoffsets;
	vec4 v_slot_start_step_gf;
	vec4 v_drawpos;
} dataIn[];

out DataGS {
	vec4 g_centerpos;
	vec4 g_uv;
};

mat3 rotBillboard;
vec4 centerpos;
vec4 emitoffsets;

void offsetVertex4(float x, float y, float z, float u, float v, float addRadiusCorr){
	g_uv.xy = vec2(u,v);
	vec3 primitiveCoords = vec3(x,y,z);
	vec3 vecnorm = normalize(primitiveCoords);
	//PRE_OFFSET
	gl_Position = cameraViewProj * vec4(centerpos.xyz + rotBillboard * (addRadius * addRadiusCorr * vecnorm + primitiveCoords ), 1.0);
	//g_uv.zw = dataIn[0].v_parameters.zw;
	POST_GEOMETRY
	EmitVertex();
}

void EmitQuad(vec4 posrot1, vec4 posrot2, float width, float r, float g){
	g_uv.rgb = vec3 (r,0,g);
	//g_uv.r = posrot1.w;
	//g_uv.g = posrot2.w;
	
	vec3 p;
	mat3 rotmat;
	rotmat = rotation3dY(posrot1.w);
	
	p = posrot1.xyz + rotmat * vec3(width, 0,0);
	gl_Position = cameraViewProj * vec4(  p , 1.0);
	EmitVertex();
	
	
	p = posrot1.xyz + rotmat * vec3(-width, 0,0);
	gl_Position = cameraViewProj * vec4(  p , 1.0);
	EmitVertex();
	
	
	rotmat = rotation3dY(posrot2.w);
	
	p = posrot2.xyz + rotmat * vec3(width, 0,0);
	gl_Position = cameraViewProj * vec4(  p , 1.0);
	EmitVertex();
	
	
	p = posrot2.xyz + rotmat * vec3(-width, 0,0);
	gl_Position = cameraViewProj * vec4( p, 1.0);
	EmitVertex();
	EndPrimitive();
	
}

void EmitSegment(vec4 posrot1, vec2 lw, vec3 col, float progress){
	g_uv.rgb = col;
	g_uv.w = progress;
	//g_uv.r = posrot1.w;
	//g_uv.g = posrot2.w;
	
	vec3 p;
	mat3 rotmat;
	rotmat = rotation3dY(posrot1.w);
	mat3 rot2 = rotation3dZ(0);
	//rotmat = rotation3dY(0);
	

	
	p = posrot1.xyz +  (rotmat * vec3(-lw.x,0,-lw.y));
	g_centerpos = vec4(p, 1.0);
	gl_Position = cameraViewProj * vec4(  p , 1.0);
	EmitVertex();
	
	p = posrot1.xyz +  (rotmat * vec3(lw.x,0,lw.y));
	g_centerpos = vec4(p, -1.0);
	gl_Position = cameraViewProj * vec4(  p , 1.0);
	EmitVertex();
	
}

void GetVelPosXFramesAgo(ivec4 slot_start_step_gf, int timeback, out vec4 posrot, out vec4 velvalid){
		int slot = slot_start_step_gf.x;
		int startframe = slot_start_step_gf.y;
		int stepsize = slot_start_step_gf.z;
		int nowFrame = slot_start_step_gf.w;
		
		int desiredFrame = nowFrame - timeback;
		
		// Wrap small texIndex back around once
		int texIndex = desiredFrame + (TEXX/2);
		texIndex = texIndex - (TEXX/2) * (texIndex /(TEXX/2));
		
		int modStepSize = texIndex - 4 * (texIndex /4);
		texIndex = texIndex - modStepSize;
		desiredFrame = desiredFrame - modStepSize;
		
		ivec2 sampleXY;
		sampleXY = ivec2(texIndex * 2, slot);
		posrot = texelFetch(unitPosTexture, sampleXY, 0); 
		sampleXY.x += 1;
		velvalid = texelFetch(unitPosTexture, sampleXY, 0); 

		if (int(velvalid.w) == desiredFrame){
			velvalid.a = 1.0;
		}else{
		//if (desiredFrame < startframe)
		//	velvalid.a = 0.0;
			velvalid.w = 0.0;
		
		}

}


#line 22065
void main(){
	uint numVertices = dataIn[0].v_numvertices;
	centerpos = dataIn[0].v_drawpos;
	#if (BILLBOARD == 1 )
		rotBillboard = mat3(cameraViewInv[0].xyz,cameraViewInv[2].xyz, cameraViewInv[1].xyz); // swizzle cause we use xz
	#endif

	//g_color = dataIn[0].v_color;

	emitoffsets = dataIn[0].v_emitoffsets; // if an atlas is used, then use this, otherwise dont

	float length = dataIn[0].v_lengthwidthcornerheight.x;
	float width = dataIn[0].v_lengthwidthcornerheight.y * 0.2;
	float cs = dataIn[0].v_lengthwidthcornerheight.z;
	float height = dataIn[0].v_lengthwidthcornerheight.w;
	
	// render order is in order of emission
	
	// first two verts are at the unit itself
	vec3 unitmid = vec3(0);
	
	g_uv.xy = vec2(-1, 0);
	gl_Position = cameraViewProj * centerpos;
	
	/*
		offsetVertex4( width * 0.5, 0.0,  length * 0.5, 0.0, 1.0, 1.414);
		offsetVertex4( width * 0.5, 0.0, -length * 0.5, 0.0, 0.0, 1.414);
		offsetVertex4(-width * 0.5, 0.0,  length * 0.5, 1.0, 1.0, 1.414);
		offsetVertex4(-width * 0.5, 0.0, -length * 0.5, 1.0, 0.0, 1.414);
		EndPrimitive();
*/

	// UNIT TRAILS:
	
	ivec4 iparams = ivec4(dataIn[0].v_slot_start_step_gf); 
	
	int slot = iparams.x;
	int start = iparams.y;
	int step = iparams.z;	
	int gameframe = iparams.w;
	int numSamples = TEXX/2;

	int nowFrameIndex = gameframe - numSamples * (gameframe / numSamples);
	int startFrameIndex = start - numSamples * ( start / numSamples);
	
	//int fragmentIndex;
	
	// fuck we need to pass in the max too!
	
	//int GameFrame = int(timeInfo.x);
	///int 
	
	//Start by drawing one segment from currpos to previous known pos:
	int timeback = 4;
	
	vec4 currposrot = dataIn[0].v_drawpos;
	vec4 nextposrot = vec4(0);
	EmitSegment(currposrot, vec2(width, 0), vec3(0), 1);
	
	// REPEAT UNTIL
	int steps = 40;
	
	vec3 left = currposrot.xyz;
	vec3 right = currposrot.xyz;
	for (int i = 0; i < steps; i ++){
		vec4 posrotat;
		vec4 velvalidat;
		GetVelPosXFramesAgo(iparams, i * 4, posrotat, velvalidat);
		float progress = float(i*step) * float(step*steps);
	
		int texIndex = nowFrameIndex - timeback * (i + 1) ; 
		
		// Roll it around
		texIndex += numSamples;
		texIndex = texIndex - numSamples * (texIndex /numSamples);
		
		
		//texIndex += timeback;
		int whole = timeback * (texIndex /timeback);
		int rem = texIndex - whole;
		texIndex = whole;
		float partial = float(rem)/float(timeback);
		
		
		ivec2 sampleXY = ivec2(texIndex * 2, slot);
		vec4 posSample = texelFetch(unitPosTexture, sampleXY, 0); 
		nextposrot = posrotat;
		
		// emit this quad, at width of 16
		
		//float progress = fract(float(texIndex) / float(numSamples * steps));
		//float progress = fract(float(texIndex) / float(numSamples * steps));
		// if you want a ground trail, use the units rot.
		// otherwise, interpo between 
		
		// calc angle by projecting diff onto screen?
		
		vec4 currproj = cameraViewProj * vec4(currposrot.xyz, 1.0);
		vec4 nextproj = cameraViewProj * vec4(nextposrot.xyz, 1.0);
		
		vec3 proj3 = normalize(currproj.xyz- nextproj.xyz);

		vec2 lw = vec2(width + (float(i) + partial) * 0.1, 0);
		
		nextposrot.y += (float(i) + partial) ;
		vec3 col = normalize(proj3);
		
		//EmitSegment(nextposrot, lw, col , float(i)/float(steps));
		
		
		vec3 tonext = normalize(nextposrot.xyz- currposrot.xyz);
		
		
		
		vec4 posrot1  = nextposrot;
		g_uv.rgb = velvalidat.www;
		g_uv.w = progress;
		
		vec3 p;
		mat3 rotmat;
		rotmat = rotation3dY(posrot1.w);
		mat3 rot2 = rotation3dZ(0);
		//rotmat = rotation3dY(0);
		
		if (velvalidat.w > 0.5){
		p = posrot1.xyz +  (rotmat * vec3(-lw.x,0,-lw.y));
		g_centerpos = vec4(p, 1.0);
		gl_Position = cameraViewProj * vec4(  p , 1.0);
		EmitVertex();
		
		p = posrot1.xyz +  (rotmat * vec3(lw.x,0,lw.y));
		g_centerpos = vec4(p, -1.0);
		gl_Position = cameraViewProj * vec4(  p , 1.0);
		EmitVertex();
		
		
		currposrot = nextposrot;
		}
	
	}
	
	EndPrimitive();

}




















