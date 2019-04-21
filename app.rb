require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/choice'
require_relative 'lib/computer'
require_relative 'lib/game'

class RPS < Sinatra::Base
  
  enable :sessions

  get '/' do 
    erb(:index)
  end
  

  post '/name' do
    $player = Player.new(params[:name])
    redirect to('/play')
  end

  
  get '/play' do
    erb(:play)
  end

  post '/choice' do
    $player.choice = Choice.new(params[:shape].downcase.to_sym)
    $computer = Computer.new(Choice.random)
    redirect to('/result')
  end

  get '/result' do
    @game = Game.new($player, $computer)
    erb(:result)
  end


  run! if app_file == $0
end
