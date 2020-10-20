#include "Uniforms.hlsl"
#include "LinearFogVSFragmentKanga.hlsl"
#include "ScatteringVSFragmentKanga.hlsl"
#include "SpecularVSFragment.hlsl"

struct VS_INPUT
{
    // Vertex position, in world space
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR0;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
    float2 specular_uv : TEXCOORD2;
    float2 specular_strength : TEXCOORD3;
};

struct VS_OUTPUT
{
    float4 position : POSITION;
    float fog : FOG;
    float4 vcol : COLOR0;
    float4 unknown_color : COLOR1;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
    float2 specular_uv : TEXCOORD2;
    float2 specular_strength : TEXCOORD3;
};

VS_OUTPUT main(in VS_INPUT input)
{
    VS_OUTPUT output;

    // line 38
    output.position = mul(input.position, proj_view_matrix);
    output.fog = linear_fog(input.position);

    ScatteringCoefficients scattering_coefficients = scattering(input.position);

    // line 47
    output.vcol.xyz = input.color.xyz * scattering_coefficients.r3.xyz;
    output.vcol.w = input.color.w;

    float3 view_vector = normalize(view_pos - input.position);
    float3 halfway_vector = normalize(light_direction + view_vector);

    float spec = specular(input.normal, halfway_vector);

    // line 61
    output.unknown_color.w = spec * input.specular_strength.x;
    output.unknown_color.xyz = scattering_coefficients.r4.xyz;

    // line 65
    output.specular_strength = spec * input.specular_strength.x;

    // line 69
    output.diffuse_1_uv = input.diffuse_1_uv;
    output.diffuse_2_uv = input.diffuse_2_uv;
    output.specular_uv = input.specular_uv;

    return output;
};