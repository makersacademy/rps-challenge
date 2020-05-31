require 'sinatra/base'
require './lib/computer'
require './lib/result'

class Rps < Sinatra::Base

  get '/' do
    erb :registration
  end

  post '/setup' do
    $player_name = params[:player_name]
    player_choice = params[:user_choice]
    $player_choice = player_choice
    $computer_choice = Computer.new.computer_choice
    $result = Result.new($computer_choice, $player_choice, $player_name).run_game
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  run! if app_file == $0
end
