######################################
# PASSO 1 contrói o binário executável
######################################
FROM golang:1.13-alpine AS builder
# Instala o git.
# O Git é necessário para buscar as dependências.
RUN apk update && apk add --no-cache git
WORKDIR $GOPATH/src/mypackage/myapp/
COPY . .
# Busca dependências.
# Usando go get.
RUN go get -d -v
# Gera o binário
RUN go build -o /go/bin/app
####################################################################
# PASSO 2 a partir do binário executável constrói uma imagem pequena
####################################################################
FROM scratch
# Copie nosso executável estático.
COPY --from=builder /go/bin/app /go/bin/app
# Executa o binário app
ENTRYPOINT ["/go/bin/app"]