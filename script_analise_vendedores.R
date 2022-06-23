### Análise descritiva em R com bases fictícias ###

### Recentemente escolhi migrar a maioria das minhas análises pontuais e até mesmo 
### as automatizações que possuo em Excel para a linguagem R por entender que existem inumeros
### benefícios. 
### Como todo todo aprendizado, os benefícios dessa migração vem acompanhado de uma série de 
### desafios e por este motivo decidi publicar os últimos enfrentados.

### Passo a passo que iremos seguir neste breve tutorial:
### 1 - Realizar leitura de arquivos de fontes diversas;
### 2 - Análise descritiva
### 3 - Criar gráficos em PDF

######################################################################################################

### Carregando os principais pacotes que iremos utilizar nessa análise
library(tidyverse)
library(readr)
library(readxl)
library(writexl)

## Selecionando os Paths que iremos utilizar ao longo do projeto
## Vantagem: Criar variáveis com os caminhos(path) ajuda na versatilidade para mover e renomear 
## arquivos sempre que necessário

# Datasets
caminho_datasets <- "~/Documents/R/R_analise_descritiva/datasets/"

# PDFs
caminho_pdf <- "~/Documents/R/R_analise_descritiva/PDFs/"


## Abrindo os arquivos 
## No dia a dia sabemos que o tratamento dos arquivos pode ser algo desafiador, por este motivo
## iremos abrir arquivos que apresentam características ineficazes para realização da análise preditiva

## Arquivo DataSet com as Vendas por Vendedores e Meses
arq_dataset <- read_excel(paste(caminho_datasets, "vendedores_meses_itens.xlsx", sep = ""), skip = 3)

