require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  get '/rock' do
    @computer_choice = Computer.new.play
    @result = Game.new.rock(@computer_choice)
    erb(:rock)
  end

  get '/scissors' do
    @computer_choice = Computer.new.play
    @result = Game.new.scissors(@computer_choice)
    erb(:scissors)
  end

  get '/paper' do
    @computer_choice = Computer.new.play
    @result = Game.new.paper(@computer_choice)
    erb(:paper)
  end
end
