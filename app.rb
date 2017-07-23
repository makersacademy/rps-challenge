require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :home
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    @game.max_rounds(params[:best_of])
    redirect '/weapons'
  end

  get '/weapons' do
    erb :weapons
  end

  post '/choices' do
    @game.next_round
    @game.player_choice(params[:rock] || params[:paper] || params[:scissors])
    redirect '/battle'
  end

  get '/battle' do
    @game.computer_choice
    @game.score
    if @game.game_over?
      erb :game_over
    else
      erb :battle
    end
  end

  run! if app_file == $0
end
