Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 15 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\SkyDome.nvv"
    dcl_position v0

#line 19
    m4x4 oPos, v0, c0

#line 22
    mov oFog, c45.w

#line 25
    m4x4 r10, v0, c8

#line 29
    add r1, c50, -r10
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul r1, r1, r1.w

#line 36
    dp3 r0.x, r1, c41
    min r0.x, r0.x, c64.w
    mad r0.y, r0.x, r0.x, c64.x

#line 43
    m4x4 r1, r10, c20
    mul r0.z, r1.z, c66.x

#line 51
    mul r1, c61, -r0.z
    mul r1, r1, c64.y
    exp r1.x, r1.x
    exp r1.y, r1.y
    exp r1.z, r1.z

#line 65
    mad r4.x, c63.z, r0.x, c63.y

#line 68
    rsq r4.x, r4.x
    mul r4.y, r4.x, r4.x
    mul r4.x, r4.y, r4.x
    mul r0.w, r4.x, c63.x

#line 77
    mul r4, c59, r0.y
    mul r5, c60, r0.w
    add r6, c64.x, -r1
    mov r7, c61
    add r4, r4, r5
    mul r4, r4, r6
    mul r4, r4, c62

#line 87
    mul r4, r4, c65.y

#line 90
    mul r4, r4, c55
    mul r4, r4, c55.w

#line 94
    mov oD0.xyz, r4

// approximately 69 instruction slots used
