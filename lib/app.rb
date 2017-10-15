require 'sinatra/base'
require './lib/game.rb'

class Rockpaperscissors < Sinatra::Base

attr_reader :name

  get '/' do
    erb :enter_name
  end

  post '/present_moves' do
    @name = params[:player_name]
    erb :present_moves
  end

  post '/result' do
    erb :result
  end

end
