# config2_w4a16

This is the W4A16/AWQ bring-up variant of `config2`.

The weight contract follows the important MyLM/Q4NX prefill choices:

- group size is fixed at 32 along K;
- weights are transferred as packed 4-bit values plus bf16 scale/zero metadata;
- the AIE core unpacks and dequantizes B on-core before the ATB BFP16 MAC.

This config is still an ATB L1-packet design, not the final native MyLM Q4NX
chunk ABI. MyLM stores weights as 5120-byte `32 output rows x 256 input cols`
chunks. This config currently stores one `128 K x 96 N` L1 B tile per packet,
so the next performance step is a native Q4NX/prefill schedule that avoids
re-dequantizing the same B tile for every M band.
