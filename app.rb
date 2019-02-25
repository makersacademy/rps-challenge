# Application RockPaperScissors set up to use Sinatra's Modular Style:

require 'sinatra/base'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/result' do
    @choice = params[:choice]
    @player = params[:player]

    # for the purposes of feature test, let's assume opponent chose Paper:
    # @opponent_choice = "paper"
    @opponent_choice = Computer.choice

    @game_result = Game.result(@choice, @opponent_choice)

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end