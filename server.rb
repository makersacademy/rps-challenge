require 'sinatra/base'
require_relative 'lib/game.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    session[:name] = params[:name]
    @p1_choice = params[:choices]
    game = Game.new
    @final_result = game.result(@p1_choice)
    erb :game
  end



  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
