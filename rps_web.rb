require 'sinatra'
require 'rake'
require './lib/game.rb'

class RPSWeb < Sinatra::Application
  get '/' do
    'asdfasdf'
    # @game.player1_choice = params[:choice]
    # erb @game.result
  end
end
