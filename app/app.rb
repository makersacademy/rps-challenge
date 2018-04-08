require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:player_name)
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @selection = params[:choice]
    erb(:play)
  end

  get '/selection' do
    @player = session[:player]
    @selection = params[:choice]

    erb(:selection)
  end

run! if app_file == $0
end
