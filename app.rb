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

  post '/save_names' do
    if params[:player1] == "" 
      session[:player1] = Computer.new(params[:computer1])
    else 
      session[:player1] = Player.new(params[:player1])
    end

    if params[:player2] == "" 
      session[:player2] = Computer.new(params[:computer2])
    else
      session[:player2] = Player.new(params[:player2])
    end

    redirect '/chose_game_type'
  end

  get '/chose_game_type' do
    erb :chose_game_type
  end
  
  post '/create_game' do
    player1 = session[:player1]
    player2 = session[:player2]
    game_type = params[:game_type].to_sym

    @game = RPS.create(player1, player2, game_type)

    redirect '/play'
  end

  get '/play' do
    @game.computer_turn? ? redirect('/computer_turn') : erb(:play)
  end

  get '/computer_turn' do
    player = @game.retrieve_turn
    player.generate_computer_choice(@game.game_options)
    @game.change_turn

    if @game.completed_run.count == 2 
      erb(:computer_message_turn2)
    else
      erb(:computer_message_turn1)
    end

  end

  post '/turn' do
    player = @game.retrieve_turn
    player.choice = params[:result].downcase
    @game.change_turn
  
    @game.completed_run.count == 2 ? redirect('/result') : redirect('/play')
  end
  
  get '/result' do
    @result = Winner.run(@game.player1, @game.player2)
    
    erb :result
  end

  post '/reset_game' do
    @game.reset_game
    
    redirect '/play'
  end

  post '/exit_game' do
    @game.exit
    redirect '/'
  end
end
