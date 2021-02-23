require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/random_pick'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'secret'
  set :public_folder, 'public'

  MESSAGE = { win: "You Won!", lose: "You Lost!", draw: "It's a draw!" }

  get '/' do
    erb :index
  end

  post '/type' do
    session[:name] = params[:name]
    redirect '/type'
  end

  get '/type' do
    @name = session[:name]
    erb :type
  end

  post '/gametype' do
    type = params.keys[0].gsub(".x","")
    p type
    Game.start_new(session[:name], type)
    redirect '/game'
  end

  get '/game' do
    @game = Game.current
    erb :game
  end

  get '/result' do
    @game = Game.current
    @result = MESSAGE[@game.result]
    erb :result
  end

  post '/choice' do
    choice = params.keys[0].gsub(".x","")
    Game.current.turn(choice)
    redirect '/result'
  end

  run! if app_file == $0
end
