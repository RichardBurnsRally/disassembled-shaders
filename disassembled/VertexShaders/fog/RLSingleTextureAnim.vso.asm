Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 15 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureAnim.nvv"
    dcl_position v0
    dcl_color v5
    dcl_texcoord v7

#line 20
    m4x4 oPos, v0, c0

#line 14 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\LinearFogVSFragmentKanga.h"
    dp4 r9.z, v0, c22

#line 18
    add r9.x, c45.y, -r9.z
    mul r9.z, r9.x, c45.z

#line 22
    min r9.z, r9.z, c64.x

#line 28
    mov oFog, r9.z

#line 11 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\ScatteringVSFragmentKanga.h"
    add r1, c50, -v0
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul r1, r1, r1.w

#line 17
    dp3 r0.x, r1, c41
    min r0.x, r0.x, c64.w
    mad r0.y, r0.x, r0.x, c64.x

#line 24
    m4x4 r1, v0, c20
    mul r0.z, r1.z, c66.x

#line 33
    mul r1, c61, -r0.z
    mul r1, r1, c64.y
    exp r1.x, r1.x
    exp r1.y, r1.y
    exp r1.z, r1.z

#line 41
    mul r3, r1, c56

#line 44
    mul r3, r3, c65.x

#line 49
    mad r4.x, c63.z, r0.x, c63.y

#line 52
    rsq r4.x, r4.x
    mul r4.y, r4.x, r4.x
    mul r4.x, r4.y, r4.x
    mul r0.w, r4.x, c63.x

#line 61
    mul r4, c59, r0.y
    mul r5, c60, r0.w
    add r6, c64.x, -r1
    add r4, r4, r5
    mul r4, r4, r6
    mul r4, r4, c62

#line 71
    mul r4, r4, c65.y

#line 75
    mul r4, r4, c55
    mul r4, r4, c55.w
    mul r3, r3, c55
    mul r3, r3, c55.w

#line 29 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureAnim.nvv"
    mul oD0.xyz, v5, r3
    mov oD0.w, v5.w
    mov oD1, r4

#line 34
    mad oT0.xy, c85.x, c85.yzzz, v7.xyyy

// approximately 75 instruction slots used
