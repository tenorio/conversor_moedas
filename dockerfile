FROM ruby:2.3-slim

# Instala as nossas dependências
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential nodejs libpq-dev

# Define nosso path
ENV INSTALL_PATH /usr/src/app

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Define o nosso path como o diretório principal
WORKDIR $INSTALL_PATH

# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./

# Instala as gems
RUN bundle install

# Copia nosso código para dentro do container
COPY . .

# Roda nosso servidor
CMD ["rails", "server", "-b", "0.0.0.0"]

