require 'sinatra/base'
require 'capybara'
require_relative 'lib/game.rb'

# - the marketeer should be able to enter their name before the game
# - the marketeer will be presented the choices (rock, paper and scissors)
# - the marketeer can choose one option
# - the game will choose a random option
# - a winner will be declared

Capybara.app

class Rps < Sinatra::Base
enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    #data collection
    erb :index
  end

  get '/1_player' do
    erb :oneplayername
  end
  #
  # get '2_player'do
  #
  #   erb :twoplayername
  # end

  post '/1_player_name' do
    @game = Game.create(params[:p1_name], 'computer')
    redirect '/move_1_player'
  end
  #
  # post '/2_player_name' do
  #   @game = Game.create(params[:p1_name], params[:p2_name])
  #   redirect '/move_2_player'
  # end

  get '/move_1_player' do
    erb :moveoneplayer
  end
  #
  # get '/move_2_player' do
  #   # showcases result (calls on method here)
  #   erb :movetwoplayer
  # end

  post '/calculating_p1' do
    @game.move(params[:select],'computer')
      # @game.create(params[:p1_move], params[:p2_move])
    redirect '/result'
  end
  #
  # post 'calculating_p2' do
  #
  #   redirect '/result'
  # end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
