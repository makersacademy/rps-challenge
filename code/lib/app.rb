require 'sinatra/base'
require_relative 'player'
require_relative 'game'

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

  run! if app_file == $0

end