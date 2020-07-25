require 'sinatra'

class Game < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/form' do
        erb :form
    end

    get '/play' do
        erb :play
    end
end