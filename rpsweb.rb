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
    redirect ('/players')
  end

  get '/players' do
    if session[:players] == '2 Player'
      erb :double_player
    else
      erb :player1
    end
  end

  post '/players' do
    if session[:players] == '2 Player'
      session[:name1] = params[:name1]
      session[:name2] = params[:name2]
      redirect ('/start_game')
    else
      session[:name] = params[:name]
      redirect ('/players') if params[:name].empty?
      redirect ('/start_game')
    end
  end

  get '/start_game' do
      if session[:players] == '2 Player'
        session[:object2] = nil
        session[:object1] = nil
        @name1 = session[:name1]
        @game = Game.new
        session[:game] = @game
        @player1 = Player.new
        @player2 = Player.new
        session[:player1] = @player1
        session[:player2] = @player2
        erb :start_game_double
      else
        @name = session[:name]
        @game = Game.new
        session[:game] = @game
        @player = Player.new
        session[:player] = @player
        @computer = Computer.new
        session[:computer] = @computer
        erb :start_game
      end
  end

  post '/game' do
    if session[:players] == '2 Player' && session[:object1] == nil
      session[:object1] = params[:object1].to_sym
      redirect ('/game')
    elsif session[:players] == '2 Player'
      session[:object2] = params[:object2].to_sym
      redirect ('/game')
    else
      session[:object] = params[:object].to_sym
      redirect ('/game')
    end
  end

  get '/game' do
    if session[:players] == '2 Player' && session[:object2] == nil
      @name2 = session[:name2]
      session[:player2]
      erb :start_game_double2
    elsif session[:players] == '2 Player' && session[:object2] != nil
      session[:player1].choose(session[:object1])
      session[:player2].choose(session[:object2])
      session[:winner_double] = session[:game].play(session[:player1], session[:player2])
      erb :game_double
    else
      session[:player].choose(session[:object])
      session[:winner] = session[:game].play(session[:player], session[:computer])
      erb :game
    end
  end

  run! if app_file == Rps_web
end
