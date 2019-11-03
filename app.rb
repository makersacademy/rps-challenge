require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  post '/select' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/selection' do
    session[:selection] = params[:selection]
    redirect('/result')
  end

  get '/result' do
    @selection = session[:selection]
    @player = Player.new(session[:player_name], @selection)
    @game = Game.new(@player)
    @result = @game.play
    @computer_selection = @game.selection
    erb(:result)
  end

  run! if app_file == $0
end