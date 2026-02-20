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
where data and pipeline parallel training of MoEs is supported.

Features and use cases
====================================================================

This section summarizes the Megablocks features supported by ROCm.

* Distributed Pre-training
* Activation Checkpointing and Recomputation
* Distributed Optimizer
* Mixture-of-Experts
* dropless-Mixture-of-Experts

Why Megablocks?
====================================================================

* The `Efficient MoE training on AMD ROCm: How-to use Megablocks on AMD GPUs 
  <https://rocm.blogs.amd.com/artificial-intelligence/megablocks/README.html>`__ 
  blog post guides how to leverage the ROCm platform for pre-training using the 
  Megablocks framework. It introduces a streamlined approach for training Mixture-of-Experts 
  (MoE) models using the Megablocks library on AMD hardware. Focusing on GPT-2, it 
  demonstrates how block-sparse computations can enhance scalability and efficiency in MoE 
  training. The guide provides step-by-step instructions for setting up the environment, 
  including cloning the repository, building the Docker image, and running the training container. 
  Additionally, it offers insights into utilizing the ``oscar-1GB.json`` dataset for pre-training 
  language models. By leveraging Megablocks and the ROCm platform, you can optimize your MoE 
  training workflows for large-scale transformer models.

It features how to pre-process datasets and how to begin pre-training on AMD GPUs through:

* Single-GPU pre-training
* Multi-GPU pre-training