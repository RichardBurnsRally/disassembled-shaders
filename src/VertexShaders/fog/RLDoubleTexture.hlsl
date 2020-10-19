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

#include "LinearFogVSFragmentKanga.hlsl"
#include "ScatteringVSFragmentKanga.hlsl"

struct VS_INPUT
{
    // Vertex position, in world space
    float4 position : POSITION0;
    float4 color : COLOR0;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
};

struct VS_OUTPUT
{
    float4 position : POSITION0;
    float fog : FOG;
    float4 vcol : COLOR0;
    float4 unknown_color : COLOR1;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
};

VS_OUTPUT main(in VS_INPUT input)
{
    VS_OUTPUT output;

    // line 22
    output.position = mul(input.position, proj_view_matrix);
    output.fog = linear_fog(input.position);

    ScatteringCoefficients scattering_coefficients = scattering(input.position);

    output.vcol.xyz = input.color.xyz * scattering_coefficients.r3.xyz;
    output.vcol.w = input.color.w;

    output.unknown_color.xyzw = 0.0;
    output.diffuse_1_uv = input.diffuse_1_uv;
    output.diffuse_2_uv = input.diffuse_2_uv;

    return output;
};