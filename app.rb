require 'sinatra/base'

class RPS < Sinatra::Base

    get '/' do
        erb(:home)
    end
    
    get '/play' do
        erb(:play)
    end
end