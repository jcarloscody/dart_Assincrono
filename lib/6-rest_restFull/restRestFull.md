# O que é:
- basicamente é uma comunicação que fazemos para buscar dados para o aplicativo
- é uma troca de informações entre sistemas utilizando o protocolo Http
- em suma, é um padrão de envio de dados utilizando a internet 
  - antigamente havia outros tipos de comunicação
  - temos também o SOAP com o arquivo .xml 

# Características
Cliente-servidor:
- Os aplicativos REST têm um servidor que gerencia os dados e o estado do aplicativo. O servidor se
se comunica com um cliente que lida com as interações do usuário. 
Stateless:
 - Os servidores não mantêm nenhum estado de cliente. Os clientes gerenciam o estado do aplicativo.
 Seus pedidos aos servidores contêm todas as informações necessárias para processá-los.
 - Ou seja, o servidor já recebe todas as informações necessárias para processar e dar o retorno.

# Rest vs RestFull é
 - REST
  - é a comunicação entre servers por meio do Http
 - RESTFULL
  - é a forma que você implementa.

# O que não é
A troca de documento entre servidores por meio do protocolo Http não é necessariamente um serviço
Rest por ex quando não trocamos estado dos recursos apenas chamamos uma função com argumentos que estão em um documento JSON ou argumentos da URL. UM SERVIÇO RESTful POSSUI UMA URI PARA CADA ITEM
NO INVENTÁRIO.

# Verbos Http
- GET
- POST
- PUT
- DELETE 

# Status
- 1xx informacional
- 2xx sucesso
- 3xx redirecionamento
- 4xx erro no cliente
- 5xx erro no server 

# viacep.com.br/ws/cepdigitaaqui/json/