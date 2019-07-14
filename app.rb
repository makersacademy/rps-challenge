require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './model/player.rb'
require './model/game.rb'
require './model/computer.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name], nil)
    $player_2 = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    # @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/attack' do
    @player_1_name = $player_1.select(params[:weapon])
    @plater_2_name = $player_2.move
    redirect '/attack'
  end

  # get '/attack' do
  #   @player_1_name = @player_1_name
  #   @player_2_name = @player_2_name
  #   @outcome = @game.outcome(player_1.weapon, pla
  # end
end
