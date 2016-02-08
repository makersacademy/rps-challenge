require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/1-player' do
    erb :one_player
  end

  get '/2-player' do
    erb :two_player
  end

  post '/2-player' do
    @game = Game.new(Player.new(params['Player1 name']),(Player.new(params['Player2 name'])))
    @game.two_player
    session[:game] = @game
    redirect '/play'
  end

  post '/1-player' do
    session[:game] = Game.new(Player.new(params['Player1 name']),Computer.new)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @player1_name = @game.player1.name
    @player2_name = @game.player2.name
    erb :play
  end

  post '/play' do
    @game = session[:game]
    session[:choice] = params['choice']
    if @game.multiplayer?
      redirect('/play2')
    else
      @game.make_moves(session[:choice])

      redirect('/game')
    end
  end

  get '/play2' do
    @game = session[:game]
    @player1_name = @game.player1.name
    @player2_name = @game.player2.name
    erb :play2
  end

  post '/game' do
    @game = session[:game]
    @game.make_moves(session[:choice],params['choice2'])
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    @player1_name = @game.player1.name
    @player2_name = @game.player2.name
    @player1_move = @game.player1.move
    @player2_move = @game.player2.move
    erb @game.outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
