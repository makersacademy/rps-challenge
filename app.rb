require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/namenew' do
    @game = Game.create(Player.new(params[:player_name]), Player.new('Computer'))
    redirect '/play'
  end

  get '/load' do
    @game = Game.read('./saves/save1.csv')
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.player.choice = 'Rock'
    @game.opponent.choice = @game.rps
    redirect '/result'
  end

  post '/paper' do
    @game.player.choice = 'Paper'
    @game.opponent.choice = @game.rps
    redirect '/result'
  end

  post '/scissors' do
    @game.player.choice = 'Scissors'
    @game.opponent.choice = @game.rps
    redirect '/result'
  end

  # post '/process' do
  #   @game.player.choice = params[:choice]
  #   @game.opponent.choice = @game.rps
  #   redirect '/result'
  # end

  get '/result' do
    @game.result = @game.compete(@game.player.choice, @game.opponent.choice)
    erb :result
  end

  get '/confirmsave' do
    @game.write('./saves/save1.csv')
    erb :confirmsave
  end

  run! if app_file == $0
end
