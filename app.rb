require 'sinatra/base'
require './lib/player'
require './lib/GameAI'
require './lib/PlayGame'
class Game  < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:player])
    session[:bot] = GameAI.new
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    @player = session[:player]
    @player.choice(params[:player_choice])
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    erb :game
  end

  get '/play_game' do
    @player = session[:player]
    @player_choice = @player.weapon
    @bot = session[:bot]
    @bot_choice = @bot.choice
    @game = PlayGame.new(@player_choice, @bot_choice)
    @result = @game.play
    p @player_choice
    p @bot_choice
    p @result
    if @result == "win"
      erb :winner
    elsif @result == "lose"
      erb :lose
    elsif @result == "draw"
      erb :draw
    else
      erb :error
    end
  end

  run! if app_file == $0

end
