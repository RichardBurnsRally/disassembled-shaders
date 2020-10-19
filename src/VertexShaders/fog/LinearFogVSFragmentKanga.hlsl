// This calculation is for a linear fog coefficient, see
// https://developer.download.nvidia.com/assets/gamedev/docs/Fog2.pdf
float linear_fog(in float4 vertex_world_position)
{
    // line 14
    // Apply the view matrix
    float4 view_space_position = mul(vertex_world_position, view_matrix);

    // line 18
    // The Z component of the view space position is the distance from the
    // camera to the vertex.
    float linear_fog = (fog_settings.y - view_space_position.z) * fog_settings.z;

    // line 22
    // This puts a cap on how foggy it can be, since values of 1.0 are totally
    // unfogged, and values of 0.0 are totally fogged.
    linear_fog = min(linear_fog, unknown_c64.x);

    // line 28
    return linear_fog;
}