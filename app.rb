require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    @game = Game.create(player_1)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  get '/game/choice' do
    erb :choice
  end

  post '/game/choice' do
    @game.player_1.update_choice(params[:choice])
    redirect '/game/outcome'
  end

  get '/game/outcome' do
    @game.player_2.update_choice(params[:choice])
    erb :outcome
  end

  run! if app_file == $0
end
