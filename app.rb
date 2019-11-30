require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:home)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    erb(:game)
  end

  get '/play_rock' do
    @player = session[:player]
    erb(:play_rock)
  end

  get '/play_scissors' do
    @player = session[:player]
    erb(:play_scissors)
  end

  get '/play_paper' do
    @player = session[:player]
    erb(:play_paper)
  end
end
