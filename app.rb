require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'

class RPSWeb < Sinatra::Base 
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end 

  post '/move' do
    @player_name = session[:player_name]
    @player_name.make_move(params[:move])
    session[:computer] = Computer.new
    @computer = session[:computer].computer_move
    erb(:move)
  end
  
  run! if app_file == $0
end 
