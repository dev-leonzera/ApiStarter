#!/bin/bash

#Prompt para o usuário pedindo o nome para a pasta do projeto
echo "Qual será o nome do projeto? "
#Guarda o nome digitado pelo usuário na variável
read nome
#Prompt para o usuário pedindo o endereço do repositório destino no GitHub
echo "Qual será o repositório de destino? "
#Guarda o nome digitado pelo usuário na variável
read repo
#Clona o repositório da API
git clone https://github.com/dev-leonzera/knExpress $nome
#Monta a pasta com o nome do projeto
cd $nome
#Apaga a pasta do repositório
rm -rf .git/
#Inicializa o novo repositório
git init
#Adiciona o novo repositório remoto
git add origin $repo
#Instala as dependências do projeto
npm i
echo "Projeto criado com sucesso. Pode codar!!!!"