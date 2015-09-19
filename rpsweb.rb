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
    session[:name] = params[:name]
    redirect ('/') if params[:name].empty?
    redirect ('/start_game')
  end

  get '/start_game' do
    if session[:object]
      session[:player].choose(session[:object])
      session[:game].play(session[:player], session[:computer])
      erb :game
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

  post '/start_game' do
    session[:object] = params[:object].to_sym
    redirect ('/start_game')
  end

  # start the server if ruby file executed directly
  run! if app_file == $Rps_web
end
