Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 17 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureShadowAnim.nvv"
    dcl_position v0
    dcl_color v5
    dcl_texcoord v7
    dcl_texcoord1 v8
    dcl_texcoord2 v9

#line 24
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

#line 31 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLSingleTextureShadowAnim.nvv"
    mov oD0.xyz, v5.xyzz
    mov oD0.w, v9.x

#line 38
    mad oT0.xy, c85.x, c85.yzzz, v7.xyyy
    mov oT1.xy, v8.xyyy

// approximately 13 instruction slots used
