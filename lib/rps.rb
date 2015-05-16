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
    erb :register
  end

  post '/game/get_ready' do
    session[:name] = params[:name]
    session[:rounds] = params[:rounds]
    @name = session[:name]
    @rounds = session[:rounds]
    erb :get_ready
  end

  get '/game/choose' do
    session[:name] = params[:name]
    session[:rounds] = params[:rounds]
    @name = session[:name]
    @rounds = session[:rounds]
    erb :choose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
