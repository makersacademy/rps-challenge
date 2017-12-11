require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    Game.create(Player.new(params[:player_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    @result = session[:result]
    erb :play
  end

  post '/choice' do
    @game.choice = params[:player_choice].downcase.to_sym
    @game.computer_choice = Computer.new.weapon_choice
    session[:result] = @game.result(@game.choice, @game.computer_choice)
    redirect '/play'
  end

  run! if app_file == $0
end
