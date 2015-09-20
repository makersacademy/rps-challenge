require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }
  # run! if app_file == $0


  get '/' do
    @name = params[:name]
    erb :index
  end

  post '/' do
    @name = params[:name]
    erb :start_game
  end

  get 'start_game' do
    @name = params[:name]
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
    erb :game
  end

  run! if app_file == RPS
end
