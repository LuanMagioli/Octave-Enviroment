# Ambiente de Programação Octave no Docker

Este repositório contém um [Dockerfile](https://docs.docker.com/engine/reference/builder/) para criar uma imagem do ambiente de programação Octave em um contêiner Docker no Vscode.

## Requisitos

- Docker (recomendado versão 19.03 ou superior)
- Visual Studio Code (Com a extensão [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) instalada)


## Instalação

1. Clone este repositório:

    ```
    git clone https://github.com/LuanMagioli/Octave-Enviroment.git
    ```

2. Abra a pasta como container:
   
    <img src="https://i.imgur.com/EHeXhP4.gif" style="height:200px"/>


## Uso

1. Uma vez dentro do contêiner, você pode executar o Octave e escrever programas:

    ```
    octave
    ```

2. Para rodar um arquivo, dentro do terminal do octave execute:
    ```
    run('filename.m')
    ```

## Licença
Este projeto está licenciado sob a licença MIT.