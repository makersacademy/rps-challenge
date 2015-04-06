require 'sinatra/base'

class Rpschallenge < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
 
  get '/' do
    'Hello Rpschallenge!'
    erb :index
  end
  
  get '/new_game' do
    @name = params[:name]
    erb :new_game
  end

  get '/play' do
    @player = Player.new params[:name]
    @game = Game.new "player_1", "comp_player"
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
