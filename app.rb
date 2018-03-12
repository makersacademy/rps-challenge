require 'sinatra/base'
require './lib/play.rb'
require_relative './lib/computer.rb'
require_relative './lib/player.rb'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = Player.new(params[:player1])
    redirect to('/play')
  end

  get '/play' do
    @player = session[:player1]
    erb(:play)
  end

  post '/move' do
    @player = session[:player1]
    redirect to('/confirmation')
  end

  get '/confirmation' do
    @player = session[:player1]
    @player.choice(params[:move])
    @computer_choice = Computer.new.choice
    @confirmation = Play.new.winner(@computer_choice, @player.move)
    erb(:confirmation)
  end

  run! if app_file == $0
end
