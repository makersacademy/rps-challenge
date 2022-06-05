require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/model1'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    'Welcome to Rock Paper Scissors, get ready to play.'
    erb :name
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  get '/result' do
    "Congratulations, You got here"
    erb :result
  end
  # post '/assign_name' do
  #   @player = Player.new(params[:name])
  #   erb :player
  # end

  run! if app_file == $0
end





# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
# ```

# Hints on functionality

# - the marketeer should be able to enter their name before the game
# - the marketeer will be presented the choices (rock, paper and scissors)
# - the marketeer can choose one option
# - the game will choose a random option
# - a winner will be declared
