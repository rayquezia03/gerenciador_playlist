class StaticPagesController < ApplicationController
    def index
        @titulo = "Gerenciador de Playlists da rayane"
    end

#pegando o token que o Spotify retorna após o login do usuário, informação necessária toda vez que fizermos uma requisição.

    def getHashParams
        hashParams = {}
        r = '/([^&;=]+)=?([^&;]*)/g'
        e = '/([^&;=]+)=?([^&;]*)/g'
        q = window.location.hash.substring(1);
        e = r.exec(q)
        loop do
            hashParams[e[1]] =decodeURIComponent(e[2])
            e = r.exec(q)
        end
        hashParams
    end            
    
    def variable
        parametros = this.getHashParams()
        token = parametros.access_token
    end
 
    
=begin
        function getHashParams() {
        var hashParams = {};
        var e, r = /([^&;=]+)=?([^&;]*)/g,
        q = window.location.hash.substring(1);
        e = r.exec(q)

        while (e) {
        hashParams[e[1]] = decodeURIComponent(e[2]);
        e = r.exec(q);
        }
        return hashParams;
        }

#Criar uma variável que receba o token que o Spotify enviará para a aplicação, uma vez que o usuário fizer o login

constructor(props){
super(props);
const parametros = this.getHashParams();
const token = parametros.access_token;
}


-> Próximo passo: criar funções para realizar as chamadas na API

=end

end
