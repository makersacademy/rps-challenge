require 'sinatra/base'
require './lib/rps.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  # set :sessions, true
  # set :sessions_secret, "bloop"

  get '/' do
    erb :index
  end 

  post '/name' do
    $user_name = params[:player]
    redirect '/game'
  end 

  get '/game' do
    @name = $user_name
    erb :game
  end 

  post '/rock' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'ROCK'
    redirect '/win' if $computer == 'SCISSORS'
    redirect '/lose' if $computer == 'PAPER'
  end 

  post '/paper' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'PAPER'
    redirect '/win' if $computer == 'ROCK'
    redirect '/lose' if $computer == 'SCISSORS'
  end 

  post '/scissors' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'SCISSORS'
    redirect '/win' if $computer == 'PAPER'
    redirect '/lose' if $computer == 'ROCK'
  end 

  get '/tie' do
    erb :tie 
  end 

  get '/win' do
    erb :win 
  end

  get '/lose' do 
    erb :lose 
  end 

end
