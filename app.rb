require 'sinatra/base'
require 'sinatra/reloader'
require './lib/rps'
require './lib/player'
require './lib/winner'

class Game < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = RPS.instance 
  end

  enable :sessions

  get '/' do 
    erb :index
  end

  post '/game/save_names' do 
    #comment  validation
    
    # test = Player.validate(params[:player1]) || Computer.validate(params[:computer1]) # a player instance or nil
    # p test

    session[:player1] = Player.validate(params[:player1]) || Computer.validate(params[:computer1]) 
    session[:player2] = Player.validate(params[:player2]) || Computer.validate(params[:computer2]) 
    
    redirect '/game/type'
  end
  
  get '/game/type' do 
    erb :game_type
  end

  post '/game/create_game' do 
    player1 = session[:player1]
    player2 = session[:player2]
    game_type = params[:game_type].to_sym

    @game = RPS.create(player1, player2, game_type)

    redirect '/game/play'
  end

  get '/game/play' do 
    @game.computer_turn? ? redirect('/game/computer_turn') : erb(:play)
  end

  get '/game/computer_turn' do 
    player = @game.retrieve_turn
    player.generate_computer_choice(@game.game_options)
    @game.change_turn

    erb :computer_message
  end

  post '/game/turn' do 
    player = @game.retrieve_turn
    player.choice = params[:result].downcase
    @game.change_turn
  
    @game.completed_run.count == 2 ? redirect('/game/result') : redirect('/game/play')
  end
  
  get '/game/result' do 
    @result = Winner.run(@game.player1, @game.player2)
    
    erb :result
  end

  post '/game/reset_game' do 
    @game.reset_game
    
    redirect '/game/play'
  end

  post '/game/exit_game' do 
    @game.exit
    redirect '/'
  end
end
