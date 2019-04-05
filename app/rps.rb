require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/result' do
    session[:choice] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @choice = session[:choice]
    @comp = ComputerPlayer.new.random_weapon
    erb :result
  end
end
