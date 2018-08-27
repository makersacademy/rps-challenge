require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    pl1 = params[:player]
    computer = Computer.new
    @game = Game.create(pl1, computer)
    redirect '/play'
  end

  get '/play' do
    @player = @game
    erb(:play)
  end

  post '/player_choice' do
    @player = @game
    session[:weapon] = params[:weapon]
    redirect '/cpu'
  end

  get '/cpu' do
    @player = @game
    @player_weapon = session[:weapon]
    erb(:cpu)
  end

  get '/result' do
    @game_weapon = @game.computer.weapon
    @player_weapon = session[:weapon]
    @player = @game
    @result = @game.result(@player_weapon, @game_weapon)
    erb(:result)
  end

  run! if app_file == $0
end
