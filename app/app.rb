require 'sinatra/base'
require_relative '../lib/player.rb'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
  $player1 = Player.new(params[:player_name])
  redirect '/play'
  end

  post '/choice' do
  choice = (params[:player_choice])
  $player1.player_choice(choice)
  redirect '/play'
  end


  get '/play' do
  p params
  @player_name = $player1.player_name
  @player_choice = $player1.print_choice
  p @player_choice
  erb(:play)
  end

end