FROM ubuntu

# Update the apt repository
RUN apt update

# Install dependencies
RUN apt update
RUN apt install -y build-essential file sudo curl wget htop lsof strace language-pack-en
RUN apt install -y git tmux neovim jq make libxml2-utils
#RUN snap install yq
#RUN apt install meld mono? npm openjdk strace? tmux

# Golang
RUN wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz -O /tmp/go.tar.gz && \
      tar -C /usr/local -xzf /tmp/go.tar.gz
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

#RUN git clone git@github.com:krisowski/dotfiles.git
#WORKDIR /home/user/dotfiles

CMD ["/bin/bash"]
