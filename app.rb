require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/results'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:start)
  end

  post '/names' do
    @player_one = Player.new(params[:player_one])
    @player_two = Player.new(params[:player_two])
    $game = Game.new(@player_one, @player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/rock' do
    @game = $game
    @game.play(:rock)
    @game.switch_players
    if @game.round_complete == true
      @game.set_winner
      redirect '/play'
    else
      redirect '/play'
    end
  end

  post '/paper' do
    @game = $game
    @game.play(:paper)
    @game.switch_players
    if @game.round_complete == true
      @game.set_winner
      redirect '/play'
    else
      redirect '/play'
    end
  end

  post '/scissors' do
    @game = $game
    @game.play(:scissors)
    @game.switch_players
    if @game.round_complete == true
      @game.set_winner
      redirect '/play'
    else
      redirect '/play'
    end
  end

  run! if app_file == $0
end
