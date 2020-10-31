#include "Uniforms.hlsl"
#include "LinearFogVSFragmentKanga.hlsl"
#include "ScatteringVSFragmentKanga.hlsl"
#include "SinCos.hlsl"

struct VS_INPUT
{
    // Vertex position, in world space
    float4 position : POSITION;
    float4 color : COLOR0;
    float2 diffuse_1_uv : TEXCOORD0;
    // Sway parameters:
    // X = Amplitude multiplier
    // Y = Angular frequency, radians per second.
    // Z = Phase offset, radians.
    float3 sway_params : TEXCOORD1;
};

struct VS_OUTPUT
{
    float4 position : POSITION;
    float fog : FOG;
    float4 vcol : COLOR0;
    float4 unknown_color : COLOR1;
    float2 diffuse_1_uv : TEXCOORD0;
};

VS_OUTPUT main(in VS_INPUT input)
{
    VS_OUTPUT output;

    float sway_amplitude = input.sway_params.x;
    float sway_angular_frequency = input.sway_params.y;
    float sway_phase_offset = input.sway_params.z;

    float r1 = sway_angular_frequency * unknown_c32.x + sway_phase_offset;
    float r0x = wrapped_sin(r1);

    // line 25
    r0x = sway_amplitude * r0x;

    // line 32
    float4 r1_ = mul(unknown_c36, unknown_c32.y);

    // line 36
    float4 r0 = r1_.xyzz * r0x + input.position;

    // line 39
    output.position = mul(r0, proj_view_matrix);

    output.fog = linear_fog(input.position);
    ScatteringCoefficients scattering_coefficients = scattering(input.position);

    // line 50
    output.vcol.xyz = input.color.xyz * scattering_coefficients.r3.xyz;
    output.vcol.w = input.color.w;

    // line 54
    output.unknown_color = scattering_coefficients.r4;

    // line 57
    output.diffuse_1_uv = input.diffuse_1_uv;

    return output;
};
