require 'sinatra/base'
require_relative 'player'

class RPS < Sinatra::Base 

  $player = Player.new

  get '/' do
    "Test page working"
  end

  get '/welcome' do
    erb :form
  end

  post '/login' do
    p params
    $player.name = params[:player]
    redirect('/play')
  end

  get '/play' do
    "#{$player.name}, pick your choice"
  end

  run! if app_file == $0

end