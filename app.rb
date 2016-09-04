require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'


class Rock_Paper_Scissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    player_2 = Computer.new
    @game = Game.create(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.player_1.select_choice([params[:choice]])
    @game.player_2.select_choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
