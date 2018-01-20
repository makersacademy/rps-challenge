require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.build(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon_choice' do
     @game.player.weapon_choice(params[:player_weapon])
     redirect :result
  end

  get '/result' do
    erb :result
  end

run! if app_file == $0
end
