require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/sign_in' do
    @player_1 = Player.new(params[:player_1])
    $game = Game.new(@player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    @bot = $game.bot_choice
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    erb :result_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
