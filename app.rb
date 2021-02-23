require 'sinatra/base'
require_relative './lib/computer_player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @rps_computer = Computer_Player.new.play
    @result = Game.new.letsPlayRPS(session[:choice], @rps_computer)
    @choice = session[:choice]
    erb :outcome
  end

  run! if app_file == $0

end
