require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect('/play')
  end

  get '/play' do 
    erb(:play)
  end

  post '/player_2_turn' do
    @choice = params[:commit]
    erb(:player_2_turn)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
