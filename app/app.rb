require 'sinatra/base'
require './lib/computer'
require './lib/Calculator'

class RPS < Sinatra::Base
  get '/' do
    erb :enter_name
  end

  post '/choose_weapon' do
    $player_name = params[:player_name] unless $player_name
    erb :choose_weapon
  end

  post '/store_player_weapon' do
    $player_weapon = params[:player_weapon].to_sym
    redirect '/computer_chooses_weapon'
  end

  get '/computer_chooses_weapon' do
    $computer_weapon = Computer.new.choose_weapon
    redirect '/calculate_winner'
  end

  get '/calculate_winner' do
    $winner = Calculator.new.calculate_winner
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
