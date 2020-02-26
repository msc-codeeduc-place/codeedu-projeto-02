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
#### Solução de problema de execução de script .sh no docker sob ambiente Windows
Ao baixar o arquivo do **GitHub** usando o comando **git clone** no **ambiente Windows**, as quebras de linha nos arquivos de script ***.sh*** são convertidos de **LF** para **CRLF**, sendo assim, ao tentar executar os scripts a partir do **Docker**, ocorre o problema de ***arquivo não encontrado***.

Para resolver esse problema foi necessário executar o comando **dos2unix** no script após fazer a cópia para o **contexto de contrução** do Docker.

```
COPY ./entrypoint-app.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
```

A execução do **Dockerise** para renderização dos templates, foi transferida para o script ***.sh***.

### Passos para executar a 2ª Tarefa
Execute o comando docker run
```
docker run milsonei/codeeducation 
```
O código fonte da **2ª tarefa** encontra-se no diretório **tarefa-02** e a **imagem do binário** encontra-se em ***[https://hub.docker.com/repository/docker/milsonei/codeeducation](https://hub.docker.com/repository/docker/milsonei/codeeducation)***

