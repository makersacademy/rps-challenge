require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names_solo' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/player_rock' do
    @game.player_1.move('Rock')
    @game.player_2.random_move
    erb(:result)
  end

  get '/player_paper' do
    @game.player_1.move('Paper')
    @game.player_2.random_move
    erb(:result)
  end

  get '/player_scissors' do
    @game.player_1.move('Scissors')
    @game.player_2.random_move
    erb(:result)
  end

  run! if app_file == $0

end
