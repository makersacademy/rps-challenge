require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPSApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  # Routes
  get '/' do
    @game.reset
    erb :index
  end

  get '/welcome' do
    @number = @game.number_of_players
    @player1 = @game.players[0]
    @player2 = @game.players[1] || Player.new('Computer')
    erb :welcome
  end

  post '/number-of-players' do
    p params
    @number = params[:players].to_i
    erb :name_entry
  end

  post '/name_entry' do
    p params
    @game.add_player(params[:player1_name])
    params[:player2_name].nil? ? @game.add_player('Computer', true) : @game.add_player(params[:player2_name])
    redirect '/welcome'
  end

  # Start the server if the file is executed directly
  run! if app_file == $0
end
