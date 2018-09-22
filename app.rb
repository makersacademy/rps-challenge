require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/2players' do
    erb :multiplayer
  end

  get '/1player' do
    erb :soloplayer
  end

  post '/name' do
    @player = Player.new(params[:player])
    session[:game] = Game.new(@player)
    redirect '/playsolo'
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    session[:game] = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/playsolo' do
    @game =  session[:game]
    erb :playsolo
  end

  get '/play' do
    @game =  session[:game]
    erb :play
  end

  post '/optionsolo' do
    @game = session[:game]
    session[:player1_choice] = params[:commit]
    redirect '/resultsolo'
  end

  post '/optionp1' do
    @game = session[:game]
    session[:player1_choice] = params[:commit]
    redirect '/playp2'
  end

  get '/playp2' do
    @game = session[:game]
    erb :optionp2
  end

  post '/optionp2' do
    @game = session[:game]
    session[:player2_choice] = params[:option]
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @game.player1.choice(session[:player1_choice])
    @game.player2.choice(session[:player2_choice])
    @result = @game.play
    erb :result
  end

  get '/resultsolo' do
    @game = session[:game]
    @game.player1.choice(session[:player1_choice])
    @result = @game.play
    erb :resultsolo
  end

  run! if app_file == $0
end
