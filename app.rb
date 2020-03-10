require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = Player.create(params[:player_name])
    @game = Game.create(Player.new(params[:player_name]))
    redirect('/play')
  end

  get '/play' do
    @player_name = Player.instance
    erb :play
  end

  post '/result' do
    @game.player_1_selection(params[:p1_move])
    redirect('/result')
  end

  get '/result' do
    @game.player_2_selection
    erb :result
  end

  post '/restart' do
    redirect('/play')
  end

  run! if app_file == $0

end
