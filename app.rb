require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    # root
    erb(:index)
  end

  get '/register' do
    # from root
    erb(:register)
  end

  post '/name' do
    # from register.erb
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    # from /name
    @player1 = session[:player1]
    erb(:play)
  end

  post '/chosen' do
    # from play.erb
    session[:selection] = params[:Rock]
    session[:selection] = params[:Paper]
    session[:selection] = params[:Scissors]
    redirect '/result'
  end

  get '/result' do
    # from /chosen
    @selection = session[:selection]
    erb(:result)
  end



  run! if app_file == $0
end
