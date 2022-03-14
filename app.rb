require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    erb :register
  end

  post '/play' do
    $player = Player.new(params[:name])
    $game = Game.new
    redirect ('/play')
  end

  get '/play' do
    @name = $player.name
    erb :play
  end

  post '/result' do
    session[:choice] = params[:choice]
    session[:computer_choice] = Computer.new.choice
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:choice]
    @computer_choice = session[:computer_choice]
    @result = $game.result(@player_choice, @computer_choice)
    erb :result
  end
end
