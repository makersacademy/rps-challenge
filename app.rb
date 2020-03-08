require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @@player_name = Player.new(params[:player_name])
    @@game = Game.new(@@player_name)
    redirect('/play')
  end

  get '/play' do
    @player_name = @@player_name
    @game = @@game
    erb :play
  end

  post '/result' do
    @game = @@game
    @game.player_1_selection(params[:p1_move])
    redirect('/result')
  end

  get '/result' do
    @game = @@game
    @game.player_2_selection
    erb :result
  end

  post '/restart' do
    @game = @@game
    redirect('/play')
  end

  run! if app_file == $0

end
