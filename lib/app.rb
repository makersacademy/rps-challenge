require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:register)
  end

  post '/user_registered' do
    @username = params[:username]
    erb(:user_registered)
  end

  get '/play' do
    erb(:play)
  end

  post '/game' do
    session[:choice] = params[:choice]
    redirect('/redirected')
  end

  get '/redirected' do
    @choice = session[:choice]
    erb(:game)
  end
end
