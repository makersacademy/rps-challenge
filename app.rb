# frozen_string_literal: true

require 'sinatra/base'
require './lib/game.rb'

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
    redirect '/play'
  end

  get '/play' do
    @game = Game.session
    @player_one = @game.player_one
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
