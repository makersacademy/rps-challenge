require 'sinatra/base'

require './lib/player.rb'

require './lib/game'

class App < Sinatra::Base

  get '/' do
    erb(:name_input)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])

    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    $game =  Game.new($player_1, $player_2)
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb(:gameplay)
  end
end