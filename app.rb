require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  get '/home' do
    erb(:home)
  end

  post '/home' do
    $player = Player.new(params[:name])
    $computer = Computer.new
    redirect '/battle'
  end

  get '/battle' do
    @name = $player.name
    @ai_name = $computer.name
    erb(:battle)
  end

  post '/battle' do
    $player.choice = params[:pick]
    redirect '/round_over'
  end

  get '/round_over' do
    $computer.choose
    @choice = $player.choice
    @ai_name = $computer.name
    @ai_choice = $computer.choice
    erb(:round_over)
  end

end
