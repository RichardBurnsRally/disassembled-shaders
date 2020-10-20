// Uniform data, set for all shaders

// A matrix which when applied to a vector will transform it from world space
// to clip space. That is, this should be the combined matrix constructed by:
// projection_matrix * view_matrix
uniform float4x4 proj_view_matrix : register(c0);
// A matrix which when applied to a vector will transform it from world space
// to view space
uniform float4x4 view_matrix : register(c20);
uniform float4 light_direction : register(c41);
// x = fog start
// y = fog end
// z = 1 / (fog end - fog start)
// w = skybox saturation?
uniform float4 fog_settings : register(c45);
uniform float4 view_pos : register(c50);
uniform float4 unknown_c55 : register(c55);
uniform float4 unknown_c56 : register(c56);
uniform float4 unknown_c59 : register(c59);
uniform float4 unknown_c60 : register(c60);
uniform float4 unknown_c61 : register(c61);
uniform float4 unknown_c62 : register(c62);
uniform float4 unknown_c63 : register(c63);
// x = some fog constant
uniform float4 unknown_c64 : register(c64);
uniform float4 unknown_c65 : register(c65);
uniform float4 unknown_c66 : register(c66);
uniform float4 unknown_c76 : register(c76);
uniform float4 unknown_c90 : register(c90);