require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    Game.create(Player.new(params[:player_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    @player_name = Game.instance.player.name
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice].downcase.to_sym
    session[:computer_choice] = Computer.new.weapon_choice
    redirect '/play'
  end

  run! if app_file == $0
end
