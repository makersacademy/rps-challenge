require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

    get '/' do
        erb(:index)
    end

    post '/player_names' do
        $game = Game.new(Player.new(params['player_1_name']))
        redirect '/game'
    end

    get '/game' do
        @game = $game
        erb(:game)
    end

    post '/rps' do
        $game.winner($game.player_move(params['RPS']), $game.computer_move)
        redirect '/game'
    end

    run! if app_file == $0
end
