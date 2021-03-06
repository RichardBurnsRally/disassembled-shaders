Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 28 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureSpecular.nvv"
    dcl_position v0
    dcl_normal v2
    dcl_color v3
    dcl_texcoord v9
    dcl_texcoord1 v10
    dcl_texcoord2 v13

#line 37
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

#line 47 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureSpecular.nvv"
    add r10, c50, -v0
    dp3 r10.w, r10, r10
    rsq r10.w, r10.w
    mul r10, r10, r10.w

#line 51
    add r8, c41, r10
    dp3 r8.w, r8, r8
    rsq r8.w, r8.w
    mul r8, r8, r8.w

#line 12 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\SpecularVSFragment.h"
    dp3 r0.y, v2, r8
    rcp r1, r0.y
    mul r1, r1, r1

#line 17
    add r0.w, c76.y, -r1.x
    mul r0.w, r0.w, c90.x
    expp r0, r0.w
    mul r0.x, r0.z, r1.x
    mul r0.z, r0.x, r1.x

#line 24
    mul r0.z, r0.z, c90.y

#line 56 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureSpecular.nvv"
    mul oD1.w, r0.z, v13.x
    mov oD1.xyz, r4.xyzz

#line 60
    mul oD0.xyz, v3, r3
    mov oD0.w, v3.w

#line 65
    mov oT0.xy, v9.xyyy
    mov oT1.xy, v10.xyyy

// approximately 94 instruction slots used
