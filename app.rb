require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    session[:game] = Game.new
    session[:opponent] = Computer.new
    erb :index
  end

  get '/play' do
    erb :play
  end

  get '/turn' do
    erb :turn
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  post '/choice' do
    session[:choice] = params[:choice]
    session[:opponent_choice] = session[:opponent].select_choice
    session[:outcome] = session[:game].get_outcome(session[:choice], session[:opponent_choice])
    redirect '/turn'
  end

  run! if app_file == $0
end
