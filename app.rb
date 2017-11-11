require 'sinatra/base'
require_relative './lib/game'

class App < Sinatra::Base

  enable :sessions

  set :session_secret, 'key'

  get '/' do
    session[:message] = nil
    erb :index
  end

  get '/play' do
    @player = session[:player]
    @confirmation = session[:message]
    @wins = Game.show.wins
    erb :play
  end

  post '/login' do
    Game.store(Game.new)
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/move' do
    session[:message] = Game.show.play(params[:choice])
    redirect '/play'
  end

  post '/reset' do
    Game.show.reset
    redirect '/play'
  end

  run! if app_file == $0

end
