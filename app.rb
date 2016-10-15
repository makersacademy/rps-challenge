require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    @game = Game.create(player_1)
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  post '/calculate' do
    @game = Game.instance
    @game.set_player_1_choice(params[:choice])
    @game.check_result
    redirect to('/result')
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
