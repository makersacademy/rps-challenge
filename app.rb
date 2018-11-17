require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @player_1 = session[:player_1]
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/player_rock' do
    @player_1.move('Rock')
    @player_1.random_move
    @game = Game.new(@player_1)
    erb(:result)
  end

  get '/player_paper' do
    @player_1.move('Paper')
    @player_1.random_move
    @game = Game.new(@player_1)
    erb(:result)
  end

  get '/player_scissors' do
    @player_1.move('Scissors')
    @player_1.random_move
    @game = Game.new(@player_1)
    erb(:result)
  end

  run! if app_file == $0

end
