struct ScatteringCoefficients
{
    float3 r4;
    float3 r3;
};

// Scattering calculation
ScatteringCoefficients scattering(in float4 vertex_world_position)
{
    ScatteringCoefficients coefficients;

    // --- Scattering
    // line 11
    //float4 view_vector = normalize(view_pos - input.position);
    //float r0x = dot(view_vector, light_direction);
    //r0x = min(r0x, unknown_c64.w);
    //float r0y = r0x * r0x + unknown_c64.x;

    // Line 24
    float4 r1 = mul(vertex_world_position, view_matrix);
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
    coefficients.r4 = 0.0;
    r3 = r3 * unknown_c55;
    coefficients.r3 = mul(r3, unknown_c55.w);
    
    return coefficients;
};