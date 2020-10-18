struct PS_INPUT
{
    float4 position : POSITION0;
    float4 color : COLOR0;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
};

struct PS_OUTPUT
{
    float4 position : POSITION0;
    float fog : FOG;
    float4 vcol : COLOR0;
    float4 unknown_color : COLOR1;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
};

uniform float4x4 view_matrix : register(c0);
uniform float4x4 look_at : register(c20);
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

void main(in PS_INPUT input, out PS_OUTPUT output)
{
    // line 22
    output.position = mul(input.position, view_matrix);

    // --- Linear Fog
    // line 14
    float4 r9 = mul(input.position, look_at);

    // line 18
    float r9x = fog_settings.y - r9.z;
    r9.z = r9x * fog_settings.z;

    // line 22
    r9.z = min(r9.z, unknown_c64.x);

    // line 28
    output.fog = r9.z;

    // --- Scattering
    // line 11
    //float4 view_vector = normalize(view_pos - input.position);
    //float r0x = dot(view_vector, light_direction);
    //r0x = min(r0x, unknown_c64.w);
    //float r0y = r0x * r0x + unknown_c64.x;

    // Line 24
    float4 r1 = mul(input.position, look_at);
    float r0z = mul(r1.z, unknown_c66.x);

    // Line 33
    r1 = mul(unknown_c61, (- r0z));
    r1 = mul(r1, unknown_c64.y);
    r1 = exp2(r1);

    // Line 41
    float3 r3 = r1 * unknown_c56;

    // Line 44
    r3.xyz = mul(r3, unknown_c65.x);

    // Line 75+2
    r3 = r3 * unknown_c55;
    r3 = mul(r3, unknown_c55.w);

    output.vcol.xyz = input.color.xyz * r3.xyz;
    output.vcol.w = input.color.w;

    output.unknown_color.xyzw = 0.0;
    output.diffuse_1_uv = input.diffuse_1_uv;
    output.diffuse_2_uv = input.diffuse_2_uv;
};
