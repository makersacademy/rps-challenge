require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:name]
    erb :play
  end

  get '/rock' do
    @game = Game.new("rock")
    erb :rock
  end

  get '/paper' do
    @game = Game.new("paper")
    erb :paper
  end

  get '/scissors' do
    @game = Game.new("scissors")
    erb :scissors
  end
end