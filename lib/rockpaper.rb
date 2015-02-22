require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RockPaper < Sinatra::Base

  enable :sessions

  set :views, Proc.new { File.join("views")}

  get '/' do
    erb :index
  end

post '/' do
    if params[:player_name].empty?
      @name = "Please tell me your name!"
      erb :index
    else
      player = Player.new(params[:player_name])
      session[:me] = player
      @name = session[:me].name
      erb :newgame
    end
  end

  get '/newgame' do
    erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
