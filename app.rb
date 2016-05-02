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

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/choose_weapons' do
    @game = Game.instance
    erb(:weapons)
  end

  post '/choose_weapons' do
    @game = Game.instance
    @game.player_1.choose_weapon(params[:weapon].to_sym)
    @game.player_2.choose_weapon
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end



  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
