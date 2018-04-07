require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'comp'

class RPS < Sinatra::Base 

  $game = Game.new

  get '/' do
    "Test page working"
  end

  get '/welcome' do
    erb :form
  end

  post '/login' do
    $game.player.name = params[:player]
    redirect('/play')
  end

  get '/play' do
   erb :play
  end

  post '/result' do
    $game.player.choice = params[:value]
    redirect('/final')
  end

  get '/final' do

  end

  run! if app_file == $0

end