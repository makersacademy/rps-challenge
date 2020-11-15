require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  set :session_secret, 'rps'

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1

    erb :play
  end

  post '/rock' do
    p1 = 'rock'
    p2 = ['rock', 'paper', 'scissors'].sample
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
    p2 = ['rock', 'paper', 'scissors'].sample
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
    p2 = ['rock', 'paper', 'scissors'].sample
    @game = Game.new(p1, p2)
    if @game.result == 'scissors'
      redirect '/winner'
    elsif @game.result == 'draw'
      redirect '/draw'
    else
      redirect '/loser'
    end
  end

  get '/winner' do
    "Matt wins!"
  end

  get '/loser' do
    "Matt lost to an AI!"
  end

  get '/draw' do
    "Matt & AI drew!"
  end

  run! if app_file == $0

end
