Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 33 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\RLDoubleTextureSpecularShadowAnim.nvv"
    dcl_position v0
    dcl_normal v2
    dcl_color v3
    dcl_texcoord v9
    dcl_texcoord1 v10
    dcl_texcoord2 v11
    dcl_texcoord3 v12
    dcl_texcoord4 v13
    dcl_texcoord5 v14

#line 46
    dp4 oPos.x, v0, c0
    dp4 oPos.y, v0, c1
    dp4 oPos.z, v0, c2
    dp4 oPos.w, v0, c3

#line 56
    add r10, c50, -v0
    dp3 r10.w, r10, r10
    rsq r10.w, r10.w
    mul r10, r10, r10.w

#line 60
    add r8, c41, r10
    dp3 r8.w, r8, r8
    rsq r8.w, r8.w
    mul r8, r8, r8.w

#line 70
    dp3 r0.x, v2, c41
    dp3 r0.y, v2, r8
    mov r0.zw, c90.w

#line 75
    lit r0, r0

#line 78
    mul oD1.w, r0.z, v12.x

#line 81
    mov oD1.z, v14.x

#line 84
    mov oD0, v3

#line 88
    mad oT0.xy, c85.x, c85.yzzz, v9.xyyy
    mad oT1.xy, c86.x, c86.yzzz, v10.xyyy
    mad oT2.xy, c87.x, c87.yzzz, v11.xyyy
    mov oT3.xy, v13.xyyy

// approximately 23 instruction slots used
