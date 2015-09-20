require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/rock'
require_relative 'lib/paper'
require_relative 'lib/scissors'

class RPS_Challenge < Sinatra::Base

  set :views, proc { File.join(root, '.', 'views') }

  enable :sessions

  get '/' do
    @name = session[:name]
    erb :index
  end

  post '/' do
    redirect ('/') if params[:name].to_s == ""
    session[:name] = params[:name]
    redirect ('/')
  end

  post '/play_game' do
    p1 = Player.new
    p2 = Player.new
    p1.name = session[:name]
    p2.name = "Computer"
    session[:game] = Game.new(p1,p2)
    redirect ('/play_game')
  end

  get '/play_game' do
    erb :play_game
  end

  post '/result' do
    session[:game].player1.current_selection = Object.const_get(params[:weapon]).new
    session[:game].player2.random_selector
    redirect ('/result')
  end

  get '/result' do
    @name1 = session[:game].player1.name
    @weapon1 = session[:game].player1.current_selection.class.to_s
    @name2 = session[:game].player2.name
    @weapon2 = session[:game].player2.current_selection.class.to_s
    @result = session[:game].challenge
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
