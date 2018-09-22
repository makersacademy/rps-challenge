require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    session[:game] = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @game =  session[:game]
    erb :play
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

  run! if app_file == $0
end
