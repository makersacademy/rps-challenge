require 'sinatra/base'
require 'sinatra/reloader'
require_relative "./lib/gameplay.rb"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/choose_RPS' do
    session[:player_1] = params[:player_1]
    @player1_name = session[:player_1]
    erb(:choose_rps)
  end

  post '/result' do
    @player1_name = session[:player_1]
    session[:rps] = params[:rps]
    @player1_choice = session[:rps]
    rps = GamePlay.new
    @comp_choice = rps.computer
    @result = rps.game_result(@player1_choice)
    erb(:result)
  end

  run! if app_file == $0

end
