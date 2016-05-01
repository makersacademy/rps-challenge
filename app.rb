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
    session[:player] = params[:name]
    @game = Player.create
    @computer = Computer.create
    @selected = Selected.create
    redirect '/play'
  end

  before do
    @game = Player.object
    @computer = Computer.object
    @selected = Selected.object
  end

  get '/play' do
    @player = session[:player]
    @game
    @computer
    erb :play
  end

  get '/game' do
    @player = session[:player]
    @game
    @computer.choose_weapon
    @selected
    erb :game
  end

  post '/rock' do
    @player = session[:player]
    @game
    @game.rock
    redirect '/game'
  end

  post '/paper' do
    @player = session[:player]
    @game
    @game.paper
    redirect '/game'
  end

  post '/scissors' do
    @player = session[:player]
    @game
    @game.scissors
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
