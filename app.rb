require 'bundler'
Bundler.require
require './lib/person.rb'
require './lib/computer.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    redirect to('/select')
  end

  get '/select' do
    erb :select
  end

  post '/compare' do
    p player_input = Person.new(params[:choice])
    p computer_input = Computer.new
    p @game = Game.new(params[:player_input], params[:computer_input])
    p @game.compare_choices(player_input, computer_input)
    redirect to ('/winner')
  end

  get '/winner' do
    erb :winner
  end

end
