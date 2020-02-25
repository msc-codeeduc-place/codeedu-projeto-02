##  Segundo Projeto - Desafio Docker

Para rodar as aplicações siga os passos abaixo:

Clone o aplicativo
```
git clone https://github.com/milsonei/codeedu-projeto-02.git milsonei-desafio-docker
```
Mude para o diretório milsonei-desafio-docker
```
cd milsonei-desafio-docker
```
### Passos para executar a 1ª Tarefa

Mude para o diretório tarefa-01
```
cd tarefa-01
```
Execute o comando docker-compose
```
docker-compose up -d
```
Acesse a aplicação pelo browser de sua preferência
```
http://localhost:8000/
```
#### Solução
A chamada do **dockerize** foi incluída nos arquivos **Dockerfile** da **aplicação** e do **nginx** e não no ***docker-compose.yaml***.

O motivo foi os sucessivos erros de ***arquivo não encontrado***.

### Passos para executar a 2ª Tarefa
Execute o comando docker run
```
docker run milsonei/codeeducation 
```
O código fonte da **2ª tarefa** encontra-se no diretório **tarefa-02** e a **imagem do binário** encontra-se em ***[https://hub.docker.com/repository/docker/milsonei/codeeducation](https://hub.docker.com/repository/docker/milsonei/codeeducation)***

