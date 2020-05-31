# frozen_string_literal: true

require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/game'
  end

  get '/game' do
   erb :names
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
