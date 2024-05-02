########################## 2º atvidade - IPR ###################################
getwd()

########## Questão 1: Criar uma classe com o nome produto.
produto <- structure(list(
  nome <- "amaciante downy",
  preco <- 13.89,
  validade <- as.Date("2024-05-02"),
  validade <- format(validade, format("%d/%m/%Y"))
))

######### Questão 2: 