require 'sinatra/base'
require './lib/player'
require './lib/game'

class Clicker < Sinatra::Base

  set :session_secret, 'rps'

  before do
    @player = Player.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    p1 = 'rock'
    p2 = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample
    @game = Game.new(p1, p2)
    if @game.result == 'rock'
      redirect '/winner'
    elsif @game.result == 'draw'
      redirect '/draw'
    else
      redirect '/loser'
    end
  end

  post '/paper' do
    p1 = 'paper'
    p2 = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample
    @game = Game.new(p1, p2)
    if @game.result == 'paper'
      redirect '/winner'
    elsif @game.result == 'draw'
      redirect '/draw'
    else
      redirect '/loser'
    end
  end

  post '/scissors' do
    p1 = 'scissors'
    p2 = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample
    @game = Game.new(p1, p2)
    if @game.result == 'scissors'
      redirect '/winner'
    elsif @game.result == 'draw'
      redirect '/draw'
    else
      redirect '/loser'
    end
  end

  post '/spock' do
    p1 = 'spock'
    p2 = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample
    @game = Game.new(p1, p2)
    if @game.result == 'spock'
      redirect '/winner'
    elsif @game.result == 'draw'
      redirect '/draw'
    else
      redirect '/loser'
    end
  end

  post '/lizard' do
    p1 = 'lizard'
    p2 = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample
    @game = Game.new(p1, p2)
    if @game.result == 'lizard'
      redirect '/winner'
    elsif @game.result == 'draw'
      redirect '/draw'
    else
      redirect '/loser'
    end
  end

  get '/winner' do
    erb :winner
  end

  get '/loser' do
    erb :loser
  end

  get '/draw' do
    erb :draw
  end

  run! if app_file == $0

end
