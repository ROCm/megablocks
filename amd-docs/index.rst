.. meta::
  :description: Megablocks documentation
  :keywords: Megablocks, ROCm, documentation, deep learning, framework, GPU

.. _megablocks-documentation-index:

********************************************************************
Megablocks on ROCm documentation
********************************************************************

Use Megablocks on ROCm to build sparse Mixture-of-Experts (MoE) LLMs on AMD Instinct
GPUs, enabling high-throughput expert routing and compute efficiency for
cost-effective recommendation and dialogue systems.

`Megablocks <https://github.com/databricks/megablocks>`__ is a lightweight library 
for `MoE <https://huggingface.co/blog/moe>`__ training. 
The core of the system is efficient "dropless-MoE" and standard MoE layers. 
Megablocks is integrated with `https://github.com/stanford-futuredata/Megatron-LM 
<https://github.com/stanford-futuredata/Megatron-LM>`__, 
where data and pipeline parallel MoE training is supported.

Megablocks on ROCm supports distributed pre-training, activation checkpointing and
recomputation, distributed optimizer, mixture-of-experts, and dropless mixture-of-experts.

Megablocks is part of the `ROCm-LLMExt toolkit
<https://rocm.docs.amd.com/projects/rocm-llmext/en/docs-25.08/>`__.

The Megablocks public repository is located at `https://github.com/ROCm/megablocks <https://github.com/ROCm/megablocks>`__.

.. grid:: 2
  :gutter: 3

  .. grid-item-card:: Install

    * :doc:`Install Megablocks <install/megablocks-install>`

  .. grid-item-card:: Reference

      * `API reference (upstream) <https://epfllm.github.io/Megatron-LLM/#api>`__

To contribute to the documentation, refer to
`Contributing to ROCm <https://rocm.docs.amd.com/en/latest/contribute/contributing.html>`_.

You can find licensing information on the :doc:`Licensing <about/license>` page.
