require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  
  run! if app_file == $0
  enable :sessions
  
  
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/results' do
    @player = Player.new(session[:player_name])
    @game = Game.new(@player)
    @player.select(params[:weapon])
    erb(:results)
  end

end