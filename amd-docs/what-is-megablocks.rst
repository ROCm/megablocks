.. meta::
  :description: What is Megablocks?
  :keywords: Megablocks, documentation, deep learning, framework, GPU, AMD, ROCm, overview, introduction

.. _what-is-Megablocks:

********************************************************************
What is Megablocks?
********************************************************************

`Megablocks <https://github.com/databricks/megablocks>`__ is a lightweight library 
for mixture-of-experts `(MoE) <https://huggingface.co/blog/moe>`__ training. 
The core of the system is efficient "dropless-MoE" and standard MoE layers. 
Megablocks is integrated with `https://github.com/stanford-futuredata/Megatron-LM 
<https://github.com/stanford-futuredata/Megatron-LM>`__, 
where data and pipeline parallel MoE training is supported.

Features and use cases
====================================================================

Megablocks provides the following key features:

- **Efficient MoE Kernels:** Implements block-sparse kernels and high-throughput
  expert routing for top-k and load-balanced Mixture-of-Experts training on ROCm.

- **Scalable Expert Parallelism:** Supports expert and data parallelism with
  flexible device mapping to distribute experts across GPUs and nodes for
  balanced utilization.

- **Modular Integration:** Works with PyTorch-based LLM stacks and can be
  integrated into training frameworks such as Megatron-LM to enable MoE variants.

- **Memory and Communication Optimizations:** Reduces activation and communication
  overhead through compact representations and efficient dispatch/permute operations.

- **Configurable Gating:** Provides customizable gating strategies, capacity
  controls, and token dropping policies to stabilize training at scale.

Megablocks is commonly used in the following scenarios:

- **Training MoE LLMs:** Scale model capacity without linear growth in compute
  by routing tokens to specialized experts.

- **Cost-Effective Serving:** Leverage sparse compute for high-throughput inference
  and reduced latency on AMD Instinct GPUs.

- **Recommendation and Dialogue Systems:** Use experts to capture diverse user
  intents and domain signals in production environments.

- **Research and Prototyping:** Explore gating strategies, expert layouts,
  and sparsity configurations for performance and quality trade-offs.

Why Megablocks?
====================================================================

Megablocks is well suited for MoE workloads for the following reasons:

- Its **block-sparse kernels and routing optimizations** deliver high throughput
  for both training and inference.

- **Expert parallelism primitives** make it straightforward to distribute experts
  across GPUs while managing capacity and load balance.

- **Compatibility with PyTorch ecosystems** simplifies adoption within existing
  LLM training frameworks.

- **Reduced compute costs** through sparsity help achieve larger effective model
  capacity within fixed budgets on ROCm clusters.
