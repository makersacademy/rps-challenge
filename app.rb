require_relative './lib/game.rb'

require 'sinatra/base'

class Rps < Sinatra::Base

  attr_reader :weapon

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    $weapon = params[:weapon]
    erb :player_1
  end

  get '/game' do
    @result = Game.new.play_game
    erb :result
  end

  run! if app_file == $0

end
