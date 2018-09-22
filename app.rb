require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "enabled"

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = Player.new(params[:player])
    session[:game] = Game.new
    redirect '/play'
  end

  get '/play' do
    @player = session[:name].name
    erb :play
  end
  
  post '/move' do
    session[:outcome] = session[:game].move
    redirect '/outcome'
  end

  get '/outcome' do
    @outcome = session[:outcome]
    erb :outcome
  end
  
  run! if app_file == $0
end
