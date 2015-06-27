require 'sinatra/base'
require_relative 'game'


class RPS < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
    # start the server if ruby file executed directly
  run! if app_file == $0
  
  get '/' do
    erb :index
  end

  get '/name' do 
    erb :name
  end

  get '/game' do 
    @name = params[:name]
    erb :game
  end 

  get '/result' do 
    @choice = params[:Option]
    p @choice
    $game = Game.new
    @player_1 = Player.new
    erb :result
  end

end
