FROM nfcore/base:1.7
LABEL authors="Olga Botvinnik" \
      description="Docker image containing all requirements for nf-core/extractcoding pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-extractcoding-1.0dev/bin:$PATH
RUN /opt/conda/envs/nf-core-extractcoding-1.0dev/bin/pip install git+https://github.com/czbiohub/kh-tools.git@olgabot/encodings--long-reads#egg=khtools
