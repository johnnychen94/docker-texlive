From python:3
Maintainer Johnny Chen <Johnnychen94@hotmail.com>

USER root

RUN apt-get update && \
    apt-get install -yq sudo && \
    apt-get clean && \
	apt-get autoclean -y && \
	apt-get autoremove -y && \
	rm -rf /tmp/* /var/tmp/* && \
	rm -rf /var/lib/apt/lists/* &&\
	rm -f /etc/ssh/ssh_host_*

RUN apt-get update && \
    git clone https://github.com/scottkosty/install-tl-ubuntu.git install-tl-ubuntu && \
    cd install-tl-ubuntu && \
    /bin/bash ./install-tl-ubuntu --more-tex --repository https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet/ && \
    cd .. && \
    rm -rf install-tl-ubuntu && \
    apt-get clean && \
	apt-get autoclean -y && \
	apt-get autoremove -y && \
	rm -rf /tmp/* /var/tmp/* && \
	rm -rf /var/lib/apt/lists/* && \
    rm -f /etc/ssh/ssh_host_*

