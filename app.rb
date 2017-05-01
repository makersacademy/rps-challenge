require 'sinatra/base'
require './lib/player'
require './lib/game'


class RPS_Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/VS' do
    if params[:player_2] == ""
      $game = Game.new(Player.new(params[:player_1]))
    else
      $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    end
    #p $game
    @game = $game
    erb :versus
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/round' do
    @game = $game
    #p params[:RPS]
    @game.get_choices(params[:RPS])
    @game.battle
    $game = @game
    erb :round
  end

  run! if app_file == $0

end
