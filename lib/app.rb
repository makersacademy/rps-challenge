require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RPS < Sinatra::Base

  enable :sessions

  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:player]).name
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    @choice = session[:choice]
    redirect '/set'
  end

  get '/set' do
    @game = Game.new
    @player = session[:player]
    @choice = session[:choice]
    erb(:choice)
  end



end
