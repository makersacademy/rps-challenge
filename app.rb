require 'sinatra/base'
require './lib/player.rb'

class Game < Sinatra::Base

    get '/' do
       "Rock, Paper, Scissors!"
       erb(:index)
    end

    post '/names' do
        $player = Player.new(params[:name])
        redirect '/play'
    end

    get '/play' do
        @player_name = $player.name
        erb(:play)
    end
end