# [Dart Assíncrono](https://www.linkedin.com/feed/update/urn:li:activity:7066097133195603968/)

### Concorrência - Thread
- quando temos um ou mais processos diferentes  que podem ser executados no mesmo espaço de tempo.
- os pc mais antigos tinham apenas um core, ou seja, conseguiam trabalhar apenas com uma thread, 
- Problemas :
  - memória compartilhada, várias threads acessa/modifica o mesmo endereço de memória
  - concorrencia

## [Isolate](https://www.linkedin.com/feed/update/urn:li:activity:7066097133195603968/)
- Dart é single-thread, rodando em uma só thread ou melhor isolate
- é semelhante a thread, porém com diferença de ter uma pilha de memória única e não pode ser acessado por outro isolate.
  
  <br/>
  <br/>
  <br/>
  Neste repositório você irá encontrar conceitos relativos as funções assíncronas e suas diferenças com as funções síncronas, bem como práticas usando arquivos, arquitetura Rest e outros.

> os processos assincronos são os processos mais custosos, onde vc tem um processamento maior, onde vc demanda maior estrutura de uma máquina. leitura de um dado no backend, no bd, leitura/escrita de arquivo, 

<br/>
<br/>

> Future - é como um promessa de retorno. pode ser erro ou valor.
- Status    
  - Completo:
    - com valor: then.
    - com error: onError, catchError
  - Incompleto:
  - whenComplete: é o finally do try/catch

<br/>
<br/>

Instalação do Dart
> https://dart.dev/get-dart

Comandos para resolver as dependências:
> dart pub get

Quando entrar na página respectiva
> dart nomeDoArquivo.dart



| Link | READ |
| ----- | ----- |
| [Preliminar Async] | exemplo preliminar de assincronismo |
| [Future] | aqui vamos ver como funciona uma função assíncrona |
| [Async Await] | E quando queremos que uma função assíncrona trabalhe de forma síncrona o que devemos fazer? |
| [FutureForEach] | e quando queremos fazer um loop sobre um retorno de Future<List<T>>? |
| [EventLoop] | compreendendo a máquina do dart |
| [Rest] | compreendendo o rest |
| [CodigoTerceiro] | inserindo packages |
| [Http] | compreendendo o Http |
| [Modelos] | A melhor forma de tratar os responses das requests |
| [RepositoryP] | Como devemos organizar os trabalhos |
| [ReadArquivos] | trabalhando com read/write de arquivos |




[Preliminar Async]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/1-async>
[Future]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/2-future>
[Async Await]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/3-async_await>
[FutureForEach]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/4-futureForEach>
[EventLoop]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/5-eventLoop_VMDART>
[Rest]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/6-rest_restFull>
[CodigoTerceiro]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/7-adicionandoCodigoTerc>
[Http]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/8-trabalhandoHttp>
[Modelos]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/9-modelos>
[RepositoryP]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/10-repository_pattern>
[ReadArquivos]: <https://github.com/jcarloscody/dart_Assincrono/tree/main/lib/11-readArquivos>

