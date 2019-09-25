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
    $game = Game.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    erb :play
  end

  post '/attack' do
    $result = $game.outcome(params[:attack])
    erb :outcome
  end

end
