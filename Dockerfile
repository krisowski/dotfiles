FROM ubuntu

# Update the apt repository
RUN apt update

# Install dependencies
RUN apt update
RUN apt install -y build-essential file sudo curl wget htop lsof strace language-pack-en fzf ripgrep
RUN apt install -y git tmux neovim make libxml2-utils
#RUN apt install -y snapd squashfuse fuse
#RUN systemctl enable snapd
#RUN snap install jq yq
#RUN snap install go
#RUN apt install meld mono? npm openjdk strace? tmux

# Python
RUN apt install -y python3
# C/C++

# Create a test user
RUN useradd -ms /bin/bash user && \
      echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
      chmod 0440 /etc/sudoers.d/user
USER user:user

# take an SSH key as a build argument
ARG PRIVATE_KEY
ARG PUBLIC_KEY

WORKDIR /home/user
RUN touch .bash_profile
RUN mkdir -p .ssh
RUN echo "$PRIVATE_KEY" > .ssh/id_rsa
RUN echo "$PUBLIC_KEY" > .ssh/id_rsa.pub
RUN chmod 600 .ssh/id_rsa
RUN chmod 600 .ssh/id_rsa.pub
RUN ssh-keyscan github.com >> .ssh/known_hosts
COPY .bashrc /tmp
RUN cat /tmp/.bashrc >> ~/.bashrc

#RUN git clone git@github.com:krisowski/dotfiles.git
#WORKDIR /home/user/dotfiles

CMD ["/bin/bash"]
