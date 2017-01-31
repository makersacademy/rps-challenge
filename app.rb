require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
    enable :sessions

    get '/' do
      erb :index
    end

    post '/name' do
      player = Player.new(params[:player_name])
      $game = Game.new(player)
      erb :game
    end

    post '/rock' do
      @game = $game
      @game.compare_rock
      erb :result
    end

    post '/paper' do
      @game = $game
      @game.compare_paper
      erb :result
    end

    post '/scissors' do
      @game = $game
      @game.compare_scissors
      erb :result
    end




    run! if app_file == $0
end
