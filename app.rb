require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/human'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :enter_name
  end

  post '/submit-name' do
    player_1 = Human.new(params[:name])
    player_2 = Computer.new('Computer')
    @game = Game.create(player_1, player_2)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/make-move' do
    @game.player_1.set_move(params[:move])
    @game.player_2.comp_choice
    redirect '/game'
  end

  get '/test' do
    erb :test
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
