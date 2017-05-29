require 'sinatra/base'
require '/Users/jenniferwem/Projects/rps-challenge/lib/game.rb'
require '/Users/jenniferwem/Projects/rps-challenge/lib/player.rb'

class RockPaperScissors < Sinatra::Base

  # attr_reader :player, :game, :choice

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    erb :play
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/choice' do
    @game = Game.instance
    @game.choice << params[:weapon]
    redirect '/results'
  end

  get '/results' do
    @game = Game.instance
    erb :results
  end

  get '/win' do
    erb :win
  end

  get '/lose' do
    erb :lose
  end

  run! if app_file == $0
end
