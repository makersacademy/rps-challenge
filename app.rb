require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/set_name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/choose_weapons' do
    erb(:weapons)
  end

  post '/choose_weapons' do
    @game.player_1.choose_weapon(params[:weapon].to_sym)
    @game.player_2.choose_weapon
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end



  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
