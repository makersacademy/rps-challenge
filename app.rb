require 'sinatra/base'
require 'sinatra/reloader'

class Marketeer < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    erb :register
  end

  post '/name' do
    session[:name] = params[:name]
    redirect ('/play')
  end

  get '/play' do
    @name = session[:name]
    @choice = session[:choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:computer_choice] = :scissors
    redirect ('/play')
  end
end
