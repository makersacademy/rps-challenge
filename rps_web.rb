require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.create(params[:player_1_name])
    @game = Game.create(@player_1)
    redirect '/play'
  end

  before do
    @game = Game.instance
    @player_1 = Player.instance
  end

  get '/play' do
    erb :play
  end

  post '/shape' do
    @game.player_1.shape = params[:shape]
    redirect('/result')
  end

  get '/result' do
    @game.player_2.shape = Computer.new.bot_shape
    @game.player_1.shape
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
