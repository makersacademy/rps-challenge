require 'sinatra/base'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'


  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/weapons' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/choice-display'
  end

  get '/choice-display' do
    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]
    erb :choice_display
  end

  run! if app_file == $0
end
