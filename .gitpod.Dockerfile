FROM gitpod/workspace-full

RUN sudo install-packages \
    pandoc \
    pandoc-citeproc \
    curl \
    gdebi-core 

#RUN install.r \
#    shiny \
#    jsonlite \
#    ggplot2 \
#    htmltools \
#    remotes \
#    renv \
#    knitr \
#    rmarkdown \
#    quarto

# ARG QUARTO_VERSION="0.9.522"
# RUN curl -o quarto-linux-amd64.deb -L https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --non-interactive quarto-linux-amd64.deb
