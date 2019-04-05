require 'sinatra/base'
require './lib/compare'
require './lib/computer'

class Game < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:name]
    redirect('/play')
  end

  get '/play' do
    @player_name = $name
    erb :play
  end

  get '/rock' do
    computer = Computer.new
    @compare = Compare.new("rock", computer.action)
    erb :winner
  end

  get '/paper' do
    computer = Computer.new
    @compare = Compare.new("paper", computer.action)
    erb :winner
  end

  get '/scissors' do
    computer = Computer.new
    @compare = Compare.new("scissors", computer.action)
    erb :winner
  end

  run! if app_file == $0
end
