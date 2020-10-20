float specular(in float3 normal, in float3 halfway_vector)
{
    // line 12
    float r0y = dot(normal, halfway_vector);
    float r1 = 1 / r0y;
    r1 = r1 * r1;

    // line 17
    float r0w = unknown_c76.y - r1.x;
    r0w = r0w * unknown_c90.x;
    float r0 = exp2(r0w);
    float r0x = r0 * r1.x;
    float r0z = r0x * r1.x;

    // line 24
    r0z = r0z * unknown_c90.y;
    
    return r0z;
};