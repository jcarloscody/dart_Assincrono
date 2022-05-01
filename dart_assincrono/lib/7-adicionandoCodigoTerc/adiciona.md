# Adicionando Código de Terceiros no Dart
- pub.dev : site responsável por centralizar todas as bibliotecas de terceiros
- adicionando: pubspec.yaml
  - como o arquivo é yaml precisa de identação obrigatória
  - forma de puxar as dependências
    - dart pub get
    - caso seja flutter: flutter pub get
    - ou apenas : pub get
  - dependencies: os pacotes serão compilados, empacotados e enviado junto com a aplicação 
  - dev_dependencies: serão empacotados e usados apenas em ambiente de desenvolvimento 