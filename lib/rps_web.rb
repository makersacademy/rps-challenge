require 'sinatra/base'
require_relative 'game'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/new_player' do
    session[:name] = params[:name]
    redirect '/new_player'
  end

  get '/new_player' do
    @player = session[:name]
    erb :new_player
  end

  get '/game' do
    erb :game
  end

  post '/result' do
    session[:player] = Player.new
    session[:comp_player] = Player.new
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player = session[:name]
    session[:player].choose(session[:choice])
    session[:comp_player].random_choice
    @player_choice = session[:choice]
    @computer_choice = session[:comp_player].random_choice
    session[:game] = Game.new(session[:player], session[:comp_player])
    @game = session[:game].play
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
