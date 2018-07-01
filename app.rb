# frozen_string_literal: true

require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

# Understands game features
class Janken < Sinatra::Base

  get '/' do
    Game.set_session
    erb(:index)
  end

  get '/player_one_entry' do
    erb(:player_one_entry)
  end

  post '/player_one_confirmed' do
    @game = Game.session
    @game.player_one = Player.new(params[:player_one_name])
    @game.player_two = Player.new('Computer')
    redirect '/play'
  end

  get '/play' do
    @game = Game.session
    @player_one = @game.player_one
    @player_two = @game.player_two
    erb(:play)
  end

  post '/player_one_selection' do
    @game = Game.session
    @player_one = @game.player_one
    @player_one.selection = params[:selection]
    redirect '/result'
  end

  get '/result' do
    @game = Game.session
    @player_one = @game.player_one
    erb(:result)
  end

  run! if app_file == $PROGRAM_NAME
end
