require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'comp_player'

class RPSWeb < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  get '/name' do
    @name = params[:name]
    session[:name] = params[:name]

    @game = Game.new
    session[:game] = @game

    @player = Player.new(@name)
    session[:player] = @player

    @computer = Computer.new
    session[:computer] = @computer

    erb :new_game
  end

  get '/choose_shape' do
    @name = session[:name]
    erb :choose_shape
  end

  post '/choose_shape' do
    session[:player_choice] = params[:player_choice]
    # redirect ('/game_result')
  end

  get '/game_result' do
    @name = session[:name]
    p session[:player].choose(session[:player_choice])
    p ession[:computer].choice
    session[:game].play(session[:player], session[:computer])

    erb :game_result
  end


  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
