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
    $name = $user_name.capitalize
    erb :game
  end 

  post '/rock' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'ROCK' 
    redirect '/win' if $computer == 'SCISSORS' || $computer == 'LIZARD'
    redirect '/lose' if $computer == 'PAPER' || $computer == 'SPOCK'
  end 

  post '/paper' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'PAPER'
    redirect '/win' if $computer == 'ROCK' || $computer == 'SPOCK'
    redirect '/lose' if $computer == 'SCISSORS' || $computer == 'LIZARD'
  end 

  post '/scissors' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'SCISSORS'
    redirect '/win' if $computer == 'PAPER' || $computer == 'LIZARD'
    redirect '/lose' if $computer == 'ROCK' || $computer == 'SPOCK'
  end 

  post '/lizard' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'LIZARD'
    redirect '/win' if $computer == 'PAPER' || $computer == 'SPOCK'
    redirect '/lose' if $computer == 'ROCK' || $computer == 'SCISSORS'
  end 

  post '/spock' do
    $game = Rps.new
    $computer = $game.computer_play
    redirect '/tie' if $computer == 'SPOCK'
    redirect '/win' if $computer == 'SCISSORS' || $computer == 'ROCK'
    redirect '/lose' if $computer == 'LIZARD' || $computer == 'SPOCK'  
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
