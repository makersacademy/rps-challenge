require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class Rps_web < Sinatra::Base

  enable :sessions
  set :views, proc { File.join(root, 'views') }

  get '/' do
    erb :index
  end

  post '/' do
    session[:players] = params[:players]
    redirect ('double_player') if params[:players] == '2 Player'
    redirect ('/single_player')
  end

  get '/single_player' do
    erb :player1
  end

  get '/double_player' do
    erb :double_player
  end

  post '/double_player' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect ('/start_game_double')
  end

  post '/single_player' do
    session[:name] = params[:name]
    redirect ('/single_player') if params[:name].empty?
    redirect ('/start_game')
  end

  get '/start_game' do
      @name = session[:name]
      @game = Game.new
      session[:game] = @game
      @player = Player.new
      session[:player] = @player
      @computer = Computer.new
      session[:computer] = @computer
      erb :start_game
  end

  post '/game' do
    session[:object] = params[:object].to_sym
    redirect ('/game')
  end

  get '/game' do
    session[:player].choose(session[:object])
    session[:winner] = session[:game].play(session[:player], session[:computer])
    p session[:winner]
    erb :game
  end

  get '/start_game_double' do
    @name1 = session[:name1]
    @game = Game.new
    session[:game] = @game
    @player1 = Player.new
    @player2 = Player.new
    session[:player1] = @player1
    session[:player2] = @player2
    erb :start_game_double
  end

  post '/start_game_double' do
    session[:object1] = params[:object1].to_sym
    redirect ('/start_game_double2')
  end

  get '/start_game_double2' do
    @name2 = session[:name2]
    session[:player2]
    erb :start_game_double2
  end

  post '/start_game_double2' do
    session[:object2] = params[:object2].to_sym
    redirect ('/game_double')
  end



  get '/start_game_double2' do
    session[:player1].choose(session[:object1])
    session[:player2].choose(session[:object2])
    session[:winner] = session[:game].play(session[:player], session[:computer])
    erb :game
  end

  post '/game_double' do
    session[:object] = params[:object].to_sym
    redirect ('/game_double')
  end

  get '/game_double' do
    session[:player1].choose(session[:object1])
    session[:player2].choose(session[:object2])
    session[:winner_double] = session[:game].play2(session[:player1], session[:player2])
    erb :game_double
  end

  run! if app_file == Rps_web
end
