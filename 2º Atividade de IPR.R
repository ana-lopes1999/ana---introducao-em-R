
# Questão 1: --------------------------------------------------------------

#' Criar uma classe simples chamada "Produto" que representa um produto. Considere os atributos: preço e validade. Utilizar a função structure para criar objetos da classe "Produto".

data = as.Date("2024/05/02")
data_formatada = format(data, format = "%d/%m/%Y") # dia-mês-ano

produto <- structure(c("amaciante downy"),
                     preco = 13.89,
                     validade = data_formatada
)
print(produto)


# Questão 2: --------------------------------------------------------------

#' Criar uma classe simples chamada "Livro" que representa um livro com atributos: autor e ano de publicação. Utilizar a função structure para criar objetos da classe "Livro" com informações fictícias.

data.pub = as.Date("1997/05/26")
data_formatada2 = format(data.pub, format = "%d/%m/%Y")

livro <- structure(
  c("Harry Potter e a pedra filosofal"),
  autor = "J. K. Rowling",
  data_publicacao = data_formatada2
)
print(livro)


# Questão 3: --------------------------------------------------------------

## Letra a): ---------------------------------------------------------------
#'Crie um data.frame contendo as variáveis: nome e nota. Escolha os nomes e valores e 5 linhas

dados <- data.frame(
  Nome = c("Ana","Cristina", "Justin", "Zandaya", "Liam"),
  Nota = c(5, 9, 7, 8, 6)
)


## Letra b): ---------------------------------------------------------------
#'Adicione um atributo chamado "disciplina", representando o nome da disciplina e Exiba o atributo "disciplina"

attr(dados,"Disciplinas") = "Matemática"
print(dados)
attributes(dados)


## Letra c): ---------------------------------------------------------------

attr(dados, "Disciplina") = "Historia"
print(dados)
attributes(dados)


## Letra d): ---------------------------------------------------------------

attr(dados, "Semestre") = "Terceiro"
print(dados)
attributes(dados)


# Questão 4: --------------------------------------------------------------


## Letra a): ---------------------------------------------------------------

library(tidyverse)

df <- data.frame(
  cidades = rep(c("Manaus", "Coari"), each = 5),
  temperatura = c(29, 30, 40, 25 ,39, 17, 28, 29, 30, 32)
)
print(df)



## Letra b): ---------------------------------------------------------------

ddzinho<- df %>%
  group_by(cidades) %>%
  summarize(
    Media_Temp = mean(temperatura),
    DP_Temp = sd(temperatura)
)
print(ddzinho)


## Letra c): ---------------------------------------------------------------

matriz = as.matrix(df)
print(matriz)
is.matrix(df)
