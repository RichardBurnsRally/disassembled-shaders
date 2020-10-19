struct ScatteringCoefficients
{
    float4 r4;
    float3 r3;
};

// Scattering calculation
ScatteringCoefficients scattering(in float4 vertex_world_position)
{
    ScatteringCoefficients coefficients;

    // line 11
    float4 view_vector = normalize(view_pos - vertex_world_position);

    // line 17
    float r0x = dot(view_vector, light_direction);
    r0x = min(r0x, unknown_c64.w);
    float r0y = r0x * r0x + unknown_c64.x;

    // line 24
    float4 r1 = mul(vertex_world_position, view_matrix);
    float r0z = mul(r1.z, unknown_c66.x);

    // line 33
    r1 = mul(unknown_c61, (- r0z));
    r1 = mul(r1, unknown_c64.y);
    r1 = exp2(r1);

    // line 41
    float3 r3 = r1 * unknown_c56;

    // line 44
    r3.xyz = mul(r3, unknown_c65.x);

    // line 49
    float r4x = unknown_c63.z * r0x + unknown_c63.y;

    // line 52
    r4x = rsqrt(r4x);
    float r4y = r4x * r4x;
    r4x = r4y * r4x;
    float r0w = r4x * unknown_c63.x;

    // line 61
    float4 r4 = mul(unknown_c59, r0y);
    float4 r5 = mul(unknown_c60, r0w);
    float4 r6 = unknown_c64.x - r1;
    r4 = r4 + r5;
    r4 = r4 * r6;
    r4 = r4 * unknown_c62;

    // line 71
    r4 = r4 * unknown_c65.y;

    // line 75
    r4 = r4 * unknown_c55;
    coefficients.r4 = mul(r4, unknown_c55.w);
    r3 = r3 * unknown_c55;
    coefficients.r3 = mul(r3, unknown_c55.w);
    
    return coefficients;
};