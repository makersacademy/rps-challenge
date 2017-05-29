require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/game'
require './lib/player'
require './lib/opponent'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  Capybara.app = RockPaperScissors

  get '/' do
    erb :index
  end

  post '/name' do
    Game.create(Player.new(params[:name]), Opponent.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_name = @game.players[0].name
    erb :play
  end

  post '/turn' do
    @opponent_choice = @game.players[1].choose_random_weapon
    @choice = params[:choice].to_sym
    @game.players[0].choice = @choice
    @winner = @game.declare_winner
    erb :turn
  end

end
