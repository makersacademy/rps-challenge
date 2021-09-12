require 'sinatra/base'
require 'sinatra/reloader' 
require './lib/player'
require './lib/computer'

class RockPaperScissor < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = Player.new(params[:player_name]).name
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    $computer = Computer.new
    erb :play
  end

  post '/move' do
    @player_name = session[:player_name]
    @player_move = params[:weapon]
    @computer = $computer
    @computer_move = @computer.choose
    erb :move
  end

  run! if app_file == $0
end
