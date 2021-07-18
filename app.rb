require 'sinatra/base'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader  
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

  post '/name' do
    ''
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/selection1' do
    @choice = params[:Rock]
    erb(:selection1)
  end

  post '/selection2' do
    @choice2 = params[:Paper]
    erb(:selection2)
  end

  post '/selection3' do
    @choice3 = params[:Scissors]
    erb(:selection3)
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end
  
  get '/result' do
    @choice = session[:rock]
    @choice2 = session[:paper]
    @choice3 = session[:Scissors]
    erb(:result)
  end
end