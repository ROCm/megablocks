FROM rocm/pytorch:rocm7.0_ubuntu24.04_py3.12_pytorch_release_2.7.1
WORKDIR /root/

# Install the application dependencies
RUN pip install regex
RUN pip install nltk
RUN pip install pybind11

RUN git clone --recurse-submodules -j8 https://github.com/ROCm/megablocks && \
    cd megablocks && \
    ./patch_torch.sh && \
    python setup.py install

RUN cd megablocks/third_party/Stanford-Megatron-LM && \
    git checkout users/peizhang56/rocm7-fix && \
    ./apply_patch.sh

CMD ["/bin/bash"]