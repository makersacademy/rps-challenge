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

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    # new game instance of class in instance variable?
    erb(:play)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect('/outcome')
  end

  get '/outcome' do
    @choice = session[:choice]
    # new game instance
    # call methods from class 
    # render outcome view with instance variables
  end

  run! if app_file == $0
end