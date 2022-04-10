require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Player.new("Computer")
    session[:game] = Game.new(player, computer)
    redirect to '/play'
  end

  get '/play' do
    @name = session[:game].player
    @com = session[:game].com
    erb :play
  end

  post '/choose' do
    session[:move] = params[:choice]
    session[:com_move] = session[:game].move
    move = session[:move]
    com_move = session[:com_move]
    session[:result] = session[:game].compare(move, com_move)
    case session[:result]
    when "It's a draw."
      redirect to '/draw'
    when "Computer wins!"
      redirect to '/lose'
    else
      redirect to '/win'
    end
  end

  get '/draw' do
    @name = session[:game].player
    @com = session[:game].com
    @move = session[:move]
    @com_move = session[:com_move]
    @result = session[:result]
    erb :draw
  end

  get '/lose' do
    @name = session[:game].player
    @com = session[:game].com
    @move = session[:move]
    @com_move = session[:com_move]
    @result = session[:result]
    erb :lose
  end

  get '/win' do
    @name = session[:game].player
    @com = session[:game].com
    @move = session[:move]
    @com_move = session[:com_move]
    @result = session[:result]
    erb :win
  end

  post '/play_again' do
    redirect to '/play'
  end

  run! if app_file == $0

end
