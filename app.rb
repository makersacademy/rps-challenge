require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = (params[:player_name])
    erb :play
  end

  get '/play' do
    erb :play
  end

  # post '/choice' do
  #   @game = $game
  #   @player = Player.new
  #   @player.player_play
  # end

end
