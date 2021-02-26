require 'sinatra/base'
require './lib/computer_play'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  $player_name=(params[:player_name])
  redirect '/display_name'
  end

  get '/display_name' do
  @player_name = $player_name
  erb :display_name
  end

  post '/display_name' do
    redirect '/new_game'
  end

  get '/new_game' do
    erb :new_game
  end

  post '/result' do
  @player_choice =(params[:player_choice])
  computer = Play.new
  @computer_choice = computer.draw
  @result = computer.result(@player_choice, @computer_choice)
  p 'I am here'
  p @result
  erb :result
  end

run! if app_file == $0

end
