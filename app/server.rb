require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
enable :sessions


  get '/' do
    erb :index
  end

  get '/hello' do
    @name = session[:me].name
    p @name
    erb :index
  end


  post '/new_player' do
    player = Player.new(params[:player_name])
    p session[:player_name] = player.name
    erb :choice
     # p player.inspect
  end

  before do
  @player = Player.new('Guido')
  end 

  post '/result' do
    @player
    p player.name
    erb :choice
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
