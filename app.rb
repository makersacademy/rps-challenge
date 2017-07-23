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
    if params[:player_name].empty? || params[:player_name] == 'ENTER A NAME!!!!'
      erb :enter_name
    else
      @game = Game.create(Player.new(params[:player_name]), params[:best_of])
      redirect '/weapons'
    end
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
    @game.battle
    if @game.over?
      erb :game_over
    else
      erb :battle
    end
  end

  run! if app_file == $0
end
