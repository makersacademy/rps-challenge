require 'sinatra'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
set :views, Proc.new { File.join(root, "..", "views") }
set :public_folder, 'public'
enable :sessions

  @@game = Game.new(Player)

  get '/' do
    erb :start_page
  end

  get '/game/new' do
    erb :select_no_players
  end

  get '/game/new' do
    erb :select_no_players
  end

  get '/game/1_player' do
    erb :register
  end

  post '/game/get_ready' do
    session[:p1_name] = params[:p1_name]
    session[:rounds] = params[:rounds]
    @p1_name = session[:p1_name]
    @rounds = session[:rounds]
    erb :get_ready
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
