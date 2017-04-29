require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  before do
    @game = Game.current_game
  end

  post '/player' do
    @player = Player.new(params[:player])
    @game   = Game.new_game(@player)
    redirect to('/start')
  end

  get '/start' do
    @player = @game.player.name
    erb(:start)
  end

  post '/choice' do
    @choice = @game.set_choice(params[:choice])
    redirect to('/result')
  end

  get '/result' do
    @choice = @game.choice
    erb(:result)
  end
end
