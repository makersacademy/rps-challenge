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
    p params
    $game.player.name = params[:player]
    redirect('/play')
  end

  get '/play' do
   erb :play
  end

  post '/result' do
    p params
    $game.player.choice = params[:value]
    p $game.player.choice
    p $game.comp.choice
    redirect('/final')
  end

  get '/final' do
   "#{$game.player.name} #{$game.result}!"
  end

  run! if app_file == $0

end