require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  get '/home' do
    erb(:home)
  end

  post '/home' do
    $player = Player.new(params[:name])
    redirect '/battle'
  end

  get '/battle' do
    $computer = Computer.new
    @name = $player.name
    @ai_name = $computer.name
    erb(:battle)
  end

end
