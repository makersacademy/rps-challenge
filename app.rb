require 'sinatra'

require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/play' do
      @player = Player.new(params[:player_name])
      @game = Game.new_game(@player)
      erb :play
    end

    post '/play-rock' do
    end

    post '/play-paper' do
    end

    post '/play-scissors' do
    end

    post '/computer-play' do
    end

    run! if app_file == $0

end
