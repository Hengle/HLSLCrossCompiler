//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// cbuffer cbConstant
// {
//
//   float3 vLightDir;                  // Offset:    0 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// samLinear                         sampler      NA          NA    0        1
// g_txDiffuse                       texture  float4          2d    0        1
// cbConstant                        cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xyz         1     NONE   float   xyz 
// TEXCOORD                 1   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
dp3_sat r0.x, v1.xyzx, cb0[0].xyzx
sample r1.xyzw, v2.xyxx, t0.xyzw, s0
mul o0.xyz, r0.xxxx, r1.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 5 instruction slots used
