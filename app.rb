# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'
require './lib/game.rb'
require './lib/weapon.rb'

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
    session[:player_weapon] = params[:weapon].downcase
    redirect '/result'
  end

  get '/result' do
    @player_weapon = Weapon.new(session[:player_weapon])
    @player_name = session[:player_name]
    game = Game.new
    @random_weapon = game.select_random
    @winner = game.calculate_winner(@player_weapon, @player_name)
    erb :result
  end

end
