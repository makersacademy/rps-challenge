require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $marketeer1 = Player.new(params[:marketeer1])
    $computer = Player.new("Computer")
    redirect '/play'
  end

  get '/play' do
    @marketeer1 = $marketeer1
    erb :play
  end

  post '/choice' do
    $marketeer1.choice = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @marketeer1 = $marketeer1
    @marketeer2 = $computer
    @marketeer1.choice = $marketeer1.choice
    @marketeer2.choice = ["Rock", "Paper", "Scissors"].sample
    @result = Game.new.rps(@marketeer1, @marketeer2)
    erb :result
  end
  run! if app_file == $0
end
