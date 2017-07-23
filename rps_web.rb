require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require 'pry'

class RPSWeb < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game =  Game.create(Player.new(params[:player_name]), Computer.new)
    redirect '/welcome'
  end

  before do
    @game = Game.instance
  end

  get '/welcome' do
    erb(:greeting)
  end

  get '/start_game' do
    erb(:play)
  end

  post '/choice' do
    weapon = params[:player_choice]
    @game.player_choice(weapon)
    erb(:play)
    redirect '/choice'
  end

  get '/choice' do
    @game.computer_choice
    erb(:play)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
