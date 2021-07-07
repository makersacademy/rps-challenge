require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @names=params[:names]
    erb :names
  end

  post '/rock' do
    @computer_player = Computer.new
    @game = Game.new("rock", @computer_player.random)
    erb :rock
  end

  post '/paper' do
    @computer_player = Computer.new
    @game = Game.new("paper", @computer_player.random)
    erb :paper
  end

  post '/scissors' do
    @computer_player = Computer.new
    @game = Game.new("scissors", @computer_player.random)
    erb :scissors
  end

  run! if app_file == $0

end
