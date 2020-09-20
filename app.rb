require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end 

  post '/choice' do
    selection = params[:selection]
    @game.player1_choice(selection)
    @game.computer_choice
    #code for who won 
    redirect '/splash_screen'
  end

  get '/splash_screen' do
    erb(:splash_screen)
  end
end 