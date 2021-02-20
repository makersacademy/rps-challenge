require 'sinatra/base'

class RPS < Sinatra::Base
    get '/' do
        'Please enter your name'
        erb :submit
    end

    post '/name' do
        @player_name = params[:player_name]
        puts params
        redirect '/game'
    end

    get '/game' do
        'This is the game'
    end
end