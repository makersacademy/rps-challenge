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
    @game.set_two_player
    session[:game] = @game
    redirect '/play_game'
  end

  post '/1-player' do
    @game = Game.new(Player.new(params['Player1 name']),Computer.new)
    session[:game] = @game
    redirect '/play_game'
  end

  get '/play_game' do
    @game = session[:game]
    @player1_name = @game.player1.name
    @player2_name = @game.player2.name
    @player2_playing = session[:two_player]
    erb :play
  end

  post '/play_game' do
    @game = session[:game]
    session[:choice] = params['choice']
    if @game.multiplayer?
      session[:two_player] = true
      redirect('/play_game')
    else
      @game.make_moves(session[:choice])
      redirect('/outcome')
    end
  end


  post '/outcome' do
    session[:two_player] = false
    @game = session[:game]
    @game.make_moves(session[:choice],params['choice2'])
    redirect '/outcome'
  end

  get '/outcome' do
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
