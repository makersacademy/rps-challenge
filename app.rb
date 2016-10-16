require 'sinatra/base'
require './lib/game'
# require './lib/player'
# require './lib/computer'

class Rps < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    computer = Computer.new
    $game = Game.new(player_1, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    @game = $game
    @game.set_player_choice(params[:choice].to_i)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    game_result = @game.result
    erb :result, :locals => {:result => game_result}
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
