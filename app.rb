require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class Game_rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :login
  end

  post '/name' do
    $player = Player.new(params[:name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/submit' do
    @game = Game.new(params[:option], $computer.move)
    session[:result] = @game.play
    redirect '/result'
  end

  get '/result' do
    @result = session[:result]
    erb :result
  end

  run! if app_file == $0
end
