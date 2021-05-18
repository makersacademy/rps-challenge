# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'
require './lib/game.rb'
require './lib/computer.rb'

# RPS class is responsible for Controller actions to run the webapp game functionality
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/weapon_selection' do
    session[:player_weapon] = params[:weapon].downcase.to_sym
    redirect '/result'
  end

  get '/result' do
    @player_weapon = session[:player_weapon]
    @player_name = session[:player_name]
    game = Game.new
    @computer_weapon = Computer.new.select_random
    outcome = game.calculate_outcome(@player_weapon, @computer_weapon)
    @winner = outcome if outcome == :draw

    @winner = game.winning_player(@player_weapon, @computer_weapon)
    erb :result
  end

end
