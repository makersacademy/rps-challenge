require 'sinatra/base'
require 'sinatra'
require 'capybara/dsl'
require 'selenium-webdriver'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

 enable :sessions


  get '/' do
    erb :index
  end

  post '/name' do
     @player = Player.create(params[:name])
    redirect '/get-move'
  end


  get '/get-move' do
    erb :move
  end

  post '/move' do
     params[:move]
     @player = Player.instance
     @player_move = Player.move(params[:move])
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    @player_move = Player.show_move
    @computer_move = Computer.move
    @result = Game.win?(@player_move,@computer_move)
    @draw = Game.draw?(@player_move,@computer_move)
    erb :result
  end




  run! if app_file == $0
  set :session_secret, 'super secret'

end