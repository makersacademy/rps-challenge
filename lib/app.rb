require 'sinatra/base'
require_relative 'player'

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

  post '/rock' do
    @player = session[:player]
    erb(:rock)
  end

end
