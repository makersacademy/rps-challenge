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

  post '/moves' do
    @player = session[:player1]
    session[:move] = params[:move]
    redirect to('/confirmation')
  end

  get '/confirmation' do
    @player = session[:player1]
    @player.choice(session[:move])
    @computer_choice = Computer.new.choice
    @confirmation = Play.new.winner(@computer_choice, @player.player_choice)
    erb(:confirmation)
  end

  run! if app_file == $0
end
