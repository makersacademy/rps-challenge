require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index, :layout => :layout)
  end

  post '/game' do
    player_1 = Player.new(params[:player_1_name])
    computer = Computer.new
    @game = Game.create(player_1, computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.set_player_choice(params[:choice].to_i)
    redirect '/result'
  end

  get '/result' do
    game_result = @game.result
    erb :result, :locals => {:result => game_result}
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
