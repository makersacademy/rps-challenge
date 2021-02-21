require 'sinatra/base'

class RPS < Sinatra::Base
    get '/' do
        'Please enter your name'
        erb :submit
    end

    post '/name' do
        @player_name = params[:player_name]
        redirect '/game'
    end

    get '/game' do
        erb :game
    end

    post '/result' do
        p params[:rock]
    end      
end