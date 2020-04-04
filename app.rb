require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player-name' do
    session[:name] = params[:name]
    @player = session[:name]
    erb(:play)
  end

  post '/play' do
    session[:move] = params[:move]
    @player1_choice = session[:move]
    $game = Game.new(session[:name], @player1_choice)
    @result = $game.play
    erb(:result)
  end

end
