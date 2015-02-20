require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, Proc.new { File.join(root, '..', "public") }

  player1 = Player.new
  player2 = Player.new
  game = Game.new(player1, player2)

  get '/' do
    erb :index
  end

  get '/enter_name' do
    @player = params[:enter_name]
    erb :enter_name
  end

  post('/enter_second_name') do
    player1.name = params[:player1_name]
    erb :enter_second_name
  end

  post('/new_game') do
    "lets plays"
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
