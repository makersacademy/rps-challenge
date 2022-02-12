require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class RPSgame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # our routes would go here
  get '/' do
    erb :index
  end

  post '/marketeer' do
    p params
    $player = Player.new(params[:marketeer])
    @player = $player
    erb :play
  end

  post '/rock' do
    @player = $player
    @player.set_move(@player, "rock")
    erb :move
  end  

  post '/paper' do
    @player = $player
    @player.set_move(@player, "paper")
    erb :move
  end

  post '/scissors' do
    @player = $player
    @player.set_move(@player, "scissors")
    erb :move
  end 
  
  get '/move' do

  end  

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
