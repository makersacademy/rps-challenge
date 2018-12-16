require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

    get '/' do
       "Rock, Paper, Scissors!"
       erb(:index)
    end

    post '/names' do
        $player = Player.new(params[:name])
        redirect '/play'
    end

    get '/play' do
        @player = $player
        @player_name = $player.name
        erb(:play)
    end

    post '/player_move' do
        $player_move = (params[:choice])
        @player_move = $player_move
        redirect '/result'
    end

    get '/result' do
        @player = $player
        @player_move = $player_move
        erb(:result)
    end

end