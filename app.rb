require 'sinatra/base'
require './lib/cpu'
require './lib/outcomes'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    $player_name = params[:player_name] unless $player_name
    erb :play
  end

  post '/store_player_weapon' do
    $player_choice = params[:player_choice].to_sym
    redirect '/cpu'
  end

  get '/cpu' do
    $computer_choice = Computer.new.choose_weapon
    redirect '/outcomes'
  end

  get '/outcomes' do
    $winner = Calculator.new.calculate_winner
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end