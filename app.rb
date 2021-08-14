require 'sinatra/base'
require 'sinatra/reloader'

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
    erb(:result)
  end

  run! if app_file == $0

end
