require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  post '/winner' do
    erb(:winner)
  end

  run! if app_file == $0
end


# the marketeer should be able to enter their name before the game
# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option
# a winner will be declared

# User story 1:

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# User story 2:

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors