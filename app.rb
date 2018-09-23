require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/multiplayer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "will this fix my aching woes?"

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = Player.new(params[:player])
    session[:game] = Game.new
    redirect '/play'
  end

  get '/play' do
    @player = session[:name].name
    erb :play
  end

  post '/rock' do
    session[:outcome] = session[:game].rock
    session[:computer_outcome] = session[:game].computer_move
    redirect '/outcome'
  end

  post '/paper' do
    session[:outcome] = session[:game].paper
    session[:computer_outcome] = session[:game].computer_move
    redirect '/outcome'
  end

  post '/scissors' do
    session[:outcome] = session[:game].scissors
    session[:computer_outcome] = session[:game].computer_move
    redirect '/outcome'
  end
  
  get '/outcome' do
    @outcome = session[:outcome]
    @computer_outcome = session[:computer_outcome]
    @decider = session[:game].decision(@outcome, @computer_outcome)
    erb :outcome
  end

  get '/mama' do
    erb :mama
  end

  # Multiplayer -- 
  get '/multiplayer' do
    session[:game] = Game.new
    erb :multiplayer
  end

  post '/multiplayer-game' do
    session[:multiplayer_game] = MultiplayerGame.new(
      Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/multiplayer-game'
  end

  post '/flip-coin' do
    session[:first_turn] = session[:multiplayer_game].flip_coin
    session[:second_turn] = session[:multiplayer_game].second_player
    redirect '/multiplayer-game'
  end

  get '/multiplayer-game' do
    erb :multigame, { locals: { player1: session[:multiplayer_game].player1, 
      player2: session[:multiplayer_game].player2, 
      flipped_coin: session[:first_turn] } }
  end

  post '/first-choice' do
    session[:first_choice] = params[:choice]
    redirect '/second-choice'
  end
  
  get '/second-choice' do
    erb :second_move, locals: { player2: session[:second_turn] }
  end
  
  post '/second-choice' do
    session[:second_choice] = params[:choice]
    redirect '/finale'
  end
  
  get '/finale' do
    @first_choice = session[:first_choice]
    @second_choice = session[:second_choice]
    @decider = session[:multiplayer_game].decision(session[:first_choice], 
      session[:second_choice])
    @first_player = session[:first_turn]
    @second_player = session[:second_turn] 
    session[:first_turn] = false
    session[:second_turn] = false
    erb :finale
  end
  
  run! if app_file == $0
end
