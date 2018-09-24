require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game_mode' do
    session[:game_mode] = params[:game_mode].to_sym
    @gamemode = session[:game_mode]
    erb :name_input
  end

  post '/name' do
    player1 = Player.new(params[:player1])
    if @gamemode == :singleplayer
      player2 = Player.new('Skynet')
    else
      player2 = Player.new(params[:player2])
    end
    session[:game] = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game =  session[:game]
    erb :optionp1
  end

  post '/optionp1' do
    @game = session[:game]
    @gamemode = session[:game_mode]
    session[:player1_choice] = params[:commit]
    if @gamemode == :singleplayer
      redirect '/result'
    else
      redirect '/playp2'
    end
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
    @gamemode = session[:game_mode]
    @game.player1.choice(session[:player1_choice])
    if @gamemode == :singleplayer
      @game.player2.choice(@game.computer_choice)
    else
      @game.player2.choice(session[:player2_choice])
    end
    @result = @game.play
    erb :result
  end

  run! if app_file == $0
end
