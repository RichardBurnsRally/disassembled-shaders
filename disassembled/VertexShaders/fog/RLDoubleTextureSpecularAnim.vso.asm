Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 28 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLDoubleTextureSpecularAnim.nvv"
    dcl_position v0
    dcl_normal v2
    dcl_color v3
    dcl_texcoord v9
    dcl_texcoord1 v10
    dcl_texcoord2 v11
    dcl_texcoord3 v13

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

#line 43 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLDoubleTextureSpecularAnim.nvv"
    mov oD0, v3

#line 51
    add r10, c50, -v0
    dp3 r10.w, r10, r10
    rsq r10.w, r10.w
    mul r10, r10, r10.w

#line 55
    add r8, c41, r10
    dp3 r8.w, r8, r8
    rsq r8.w, r8.w
    mul r8, r8, r8.w

#line 65
    dp3 r0.x, v2, c41
    dp3 r0.y, v2, r8
    mov r0.zw, c90.w

#line 71
    lit r0, r0

#line 74
    mul oT3, r0.z, v13.x

#line 78
    mad oT0.xy, c85.x, c85.yzzz, v9.xyyy
    mad oT1.xy, c86.x, c86.yzzz, v10.xyyy
    mad oT2.xy, c87.x, c87.yzzz, v11.xyyy

// approximately 26 instruction slots used
