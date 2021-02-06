#include "Uniforms.hlsl"
#include "LinearFogVSFragmentKanga.hlsl"
#include "ScatteringVSFragmentKanga.hlsl"

struct VS_INPUT
{
    // Vertex position, in world space
    float4 position : POSITION;
    float4 color : COLOR0;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
};

struct VS_OUTPUT
{
    float4 position : POSITION;
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

    // line 31
    output.vcol.xyz = input.color.xyz * scattering_coefficients.r3.xyz;
    output.vcol.w = input.color.w;
    output.unknown_color = scattering_coefficients.r4;

    // line 37
    output.diffuse_1_uv = tex_anim_diffuse_1.x * tex_anim_diffuse_1.yz + input.diffuse_1_uv;
    output.diffuse_2_uv = tex_anim_diffuse_2.x * tex_anim_diffuse_2.yz + input.diffuse_2_uv;

    return output;
};