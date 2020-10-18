struct PS_INPUT
{
    // Vertex color
    float4 vcol : COLOR0;
    // ??? seems to be 0
    float4 v1 : COLOR1;
    float2 diffuse_1_uv : TEXCOORD0;
    float2 diffuse_2_uv : TEXCOORD1;
};

struct PS_OUTPUT
{
    float4 color : COLOR0;
};

sampler TextureSampler =
sampler_state
{
    Texture = t;
    // TODO these should be coming from the INI settings for diffuse textures?
    // I can't see that happening in the disassembly, though.
    MipFilter = LINEAR;
    MinFilter = POINT;
    MagFilter = POINT;
};

void main(in PS_INPUT input, out PS_OUTPUT output)
{
    float4 tex_diffuse_1 = tex2D(TextureSampler, input.diffuse_1_uv);
    float4 tex_diffuse_2 = tex2D(TextureSampler, input.diffuse_2_uv);

    float4 mix_col_tex1 = saturate(input.vcol * tex_diffuse_1);
    float4 mix_col_tex2 = saturate(input.vcol * tex_diffuse_2);
    float factor = saturate(tex_diffuse_2.w * input.vcol.w);
    float3 diffuse = saturate(lerp(mix_col_tex1, mix_col_tex2, factor));
    float3 result = saturate(diffuse + input.v1);
    output.color.xyz = result;
    output.color.w = mix_col_tex1.w;
};