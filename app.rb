require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:names_form)
  end

  post '/player_name' do
    Game.create(Player.new(params["Player1"]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    "#{@game.player1.name} VS Computer"
  end

  run! if app_file == $0
end
