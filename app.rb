require 'sinatra/base'
require './lib/player'


class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
  player_1 = Player.new(params[:player_1_name])
  computer = Computer.new
  @game = Game.new_game(player_1, computer)
  redirect '/play'
  end

  get '/play' do
    player_1.player_1_choice(params[:player_1_choice])
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
