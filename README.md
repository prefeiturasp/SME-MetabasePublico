# SME-MetabasePublico

[Metabase](https://metabase.com/) público da SME para geração de dashboards embedáveis.

## Requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Como funciona

Este repositório usa Docker e Docker Compose para rodar uma aplicação Metabase, um banco de dados Postgresql e um [Nginx](https://www.nginx.com/) como reverse proxy. Os detalhes estão no arquivo `docker-compose.yml`. As configurações do Nginx estão em `conf.d/metabase.conf`.

## Instalação

1. Se a máquina não tiver Docker e Docker Compose instalados, você pode rodar o script `setup.sh` para instalá-los.
2. Clonar este repositório: `git clone https://github.com/prefeiturasp/SME-MetabasePublico.git`.
3. Vá para a pasta clonada: `cd SME-MetabasePublico/`.
4. Criar arquivo `env_file` baseado em `env_file.sample`, mudando o campo `CUSTOM_PASSWORD_HERE` por uma senha longa (~64 caracteres) usando letras e números.
5. Rodar o Metabase: `docker-compose up -d`.
6. O Metabase vai estar acessível na porta `8687`, mas cheque o que está definido no `docker-compose.yml`.
