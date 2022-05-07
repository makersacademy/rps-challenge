require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/named' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  get '/result' do
    @player_choice = params[:choice]
    $game = Game.new(session[:player_1_name], @player_choice)
    @game = $game
    p @game.choice
    p @game.computer_choice
    p @game.won?
    p @game.play
    erb :result
  end


  run! if app_file == $0
end
