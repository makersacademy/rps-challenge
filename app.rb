require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enabled sessions
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # added name parameter to a session
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    # assigning param name and user choice to an instance variable
    @name = session[:name]
    @choice = session[:choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/play' do
    # added user choice parameter to a session
    session[:choice] = params[:choice]
    session[:computer_choice] = :paper
    redirect '/play'

  end

  run! if app_file == $0
end
