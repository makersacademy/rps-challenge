require 'sinatra/base'
require 'sinatra/reloader'
require './lib/computer'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    $computer = Computer.new
    erb :play
  end

  post '/select' do
    @player_name = session[:player_name]
    @player_move = params[:choice] 
    @computer = $computer
    @computer_select = @computer.choose
    erb :select
  end

  run! if app_file == $0
end
