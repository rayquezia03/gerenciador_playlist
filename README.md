# 📱 Gerenciador de Playlists colaborativas e Músicas

## 📄 Sobre a finalidade do Projeto

#### A finalidade dessa aplicação é criar um gerenciador de Playlists colaborativas e Músicas, onde Democracia é a palavra chave. Para o gerenciamento dessas Playlists, é necessário que a aplicação permita adicionar músicas e remover aquelas já tocadas na Playlist Colaborativa, assim como manter o histórico de todas. Então um espelho das playlists colaborativas no Spotify deve ser representado nos dados salvos pelo projeto Rails, assim como seu status (enfileirada ou tocada).

Essa ferramenta poderá interagir com algum outro produto, logo, precisa-se de uma API. Não é preciso um excelente visual dessa ferramenta, mas é necessário que ela tenha uma excelente performance, funcione corretamente, tenha um código claro e tenha testes automatizados. Seguem abaixo os principais requisitos:

- Utilizar a API do Spotify para fazer consultas e gerenciamento de músicas da Playlist;
- Implementar CRUD de integração para a comunicação entre o backend que você está desenvolvendo e API do Spotify (tokens e informações sensíveis);
- Implementar CRUD de músicas usando o Rails;
- Listar um histórico de músicas (enfileiradas e já tocadas);
- As músicas devem sair da playlist assim que reproduzidas. O Sidekiq deve ser usado para efetuar esse controle;
- Músicas já tocadas não poderão retornar a playlist.
- Configurar e utilizar redis para salvar o histórico das músicas executadas;
- Somente usuários autenticados podem usar o sistema e a API;
- O histórico de músicas retornado pela API deve ter paginação (10 itens por página).

#### Framework para testar as rotas: Insomnia

#### Prazo final: 22/09

