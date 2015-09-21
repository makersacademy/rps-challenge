require_relative 'lib/player'
require_relative 'lib/human'
require_relative 'lib/computer'
require_relative 'lib/game'

require 'sinatra/base'

class RpsWeb < Sinatra::Base

  set :views, proc { File.join(root, 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  post '/name' do
    session[:name] = params[:name]
    redirect ('/name') if params[:name].empty?
    redirect ('/game')
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/result' do
    session[:choice] = params[:choice]
    redirect ('/result')
  end

  get '/result' do
    choice = session[:choice]
    game = Game.new
    player1 = Human.new
    player2 = Computer.new
    player1.chooses(choice.to_sym)
    player2.rand_choice
    @choice = player1.hand
    @comp_choice = player2.hand
    return erb :winner if game.winner?(player1, player2)
    return erb :loser if game.loser?(player1, player2)
    return erb :draw if game.draw?(player1, player2)
  end

  run! if app_file == $PROGRAM_NAME
end
