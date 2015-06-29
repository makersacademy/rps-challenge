require 'sinatra/base'
require_relative 'game'

class RPSChallenge < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:name]
    session[:name] = @name
    erb :welcome
  end

  get '/choose' do
    $game = Game.new(Player.new, Opponent.new)
    @name = session[:name]
    erb :choose
  end

  post '/choose' do
    @name = session[:name]
    @weapon = params[:weapon]
    session[:weapon] = @weapon
    erb :choose
  end

  post '/play' do
    @weapon = params[:weapon]
    begin
    $game.player.choose(@weapon)
    @opponent_weapon = $game.opponent.weapon
    if $game.winner?
      erb :winner
    elsif $game.draw?
      erb :draw
    else
      erb :loser
    end
    rescue RuntimeError => @error
      @name = session[:name]
      erb :choose
    end
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
