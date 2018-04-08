require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'comp'

class RPS < Sinatra::Base 

  $game = Game.new
  $player = Player.new
  $comp = Comp.new

  get '/' do
    "Test page working"
  end

  get '/welcome' do
    erb :form
  end

  post '/login' do
    $player.name = params[:player]
    redirect('/play')
  end

  get '/play' do
   erb :play
  end

  post '/result' do
    $game.player.choice = params[:value].delete(":")
    redirect('/final')
  end

  get '/final' do
    erb :result
  end

  run! if app_file == $0

end