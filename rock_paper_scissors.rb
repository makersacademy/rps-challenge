require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'game'
require 'player'
require 'opponent'

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
    @choice = params[:choice]
    erb :turn
  end

end
