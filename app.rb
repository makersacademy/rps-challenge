require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/selected'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new params[:name]
    @selected = Selected.create(@player)
    redirect '/play'
  end

  before do
    @selected = Selected.object
  end

  get '/play' do
    erb :play
  end

  get '/game' do
    @selected.computer.choose_weapon
    @selected.score
    if @selected.game_over?
      redirect '/game-over'
    end
    erb :game
  end

  # get '/rock' do
  #   "hello world"
  # end

  post '/rock' do
    @selected.player.rock
    redirect '/game'
  end

  post '/paper' do
    @selected.player.paper
    redirect '/game'
  end

  post '/scissors' do
    @selected.player.scissors
    redirect '/game'
  end

  get '/game-over' do
    @selected
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
