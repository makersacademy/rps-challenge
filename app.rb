
require_relative "./lib/player"
require_relative "./lib/game"

require 'sinatra'

class App < Sinatra::Base

  get '/' do
    $game = Game.instance
    erb(:index)
  end

  get '/name' do
    @game = $game
    erb(:name)
  end

  post '/name' do
    $game.set_player_one(Player.new(params[:name]))
    redirect('/name')
  end

  get '/play' do
    erb(:play)
  end

end
