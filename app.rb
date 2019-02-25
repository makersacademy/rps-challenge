require "sinatra/base"
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class Game_rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :display
  end

  post '/name' do
    p params
     $player = Player.new(params[:player])

    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do

    p @player_name = $player.name
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
