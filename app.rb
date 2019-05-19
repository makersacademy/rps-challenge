require 'sinatra/base'
require './lib/game'
require './lib/play'

class RPS < Sinatra::Base

  get '/' do
    erb :enter_name
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  get '/game' do
    erb :game
  end

  get '/rock' do
    rock = Play.new(:rock)
    @game = Game.new(rock)
    @num = @game.random
    erb :rock
  end

  get '/paper' do
    paper = Play.new(:paper)
    @game = Game.new(paper)
    @num = @game.random
    erb :paper
  end

  get '/scissors' do
    scissors = Play.new(:scissors)
    @game = Game.new(scissors)
    @num = @game.random
    erb :scissors
  end
end
