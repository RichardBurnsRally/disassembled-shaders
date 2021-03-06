Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 16 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureSway.nvv"
    dcl_position v0
    dcl_color v5
    dcl_texcoord v7
    dcl_texcoord1 v8
    mad r1, v8.y, c32.x, v8.z

#line 4 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\SinCos.h"
    mad r0.x, r1.x, c33.w, c33.y
    expp r0.y, r0.x
    mad r0.x, r0.y, c33.z, -c33.x
    dst r2.xy, r0.x, r0.x
    mul r2.z, r2.y, r2.y
    mul r2.w, r2.y, r2.z
    mul r0, r2, r0.x
    dp4 r0.x, r2, c34

#line 25 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureSway.nvv"
    mul r0.x, v8.x, r0.x

#line 32
    mov r1, c36
    mul r1, r1, c32.y

#line 36
    mad r0, r1.xyzz, r0.x, v0

#line 39
    m4x4 oPos, r0, c0

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

#line 50 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureSway.nvv"
    mul oD0.xyz, v5, r3
    mov oD0.w, v5.w

#line 54
    mov oD1, r4

#line 57
    mov oT0.xy, v7.xyyy

// approximately 88 instruction slots used
