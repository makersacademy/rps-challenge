require 'sinatra/base'
require_relative 'lib/player'

class Rock_Paper_Scissors < Sinatra::Base

	enable :sessions

	set :views, Proc.new { File.join(root, ".", "views")}

  get '/' do
  	erb :index
  end

post '/' do
    if params[:player_name].empty?
      @name = "Please provide your name to play the game."
      erb :index
    else
      player = Player.new(params[:player_name])
      session[:me] = player
      @name = session[:me].name
      erb :game
    end
  end

get '/game' do
    @player_name = params[:name]
    erb :game
  end

  post '/game' do
    erb :game
  end







  # start the server if ruby file executed directly
  run! if app_file == $0
end

