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
    @game.player_1.choice(params[:player_1_option])
    erb(:player_2_turn)
  end

  post '/result' do
    @game.player_1.choice(params[:player_1_option]) if @game.player_2.name == "Computer"
    @game.player_2.choice(params[:player_2_option])
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
