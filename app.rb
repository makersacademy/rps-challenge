require 'sinatra/base'
require_relative './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = Player.new(session[:player1_name])
    @option = session[:option]
    @computers_option = session[:computers_option]
    $game = Game.new(:player1_name, :computers_option)
    erb :play
  end

  post '/play' do
    @game = $game
    session[:option] = params[:option]
    @computers_option = session[:computers_option]
    redirect '/play'
  end

  post '/paper' do
    @game = $game
    erb :paper
  end

  post '/scissors' do
    @game = $game
    erb :scissors
  end

  post '/rock' do
    @game = $game
    erb :rock
  end

run! if app_file == $0
end
