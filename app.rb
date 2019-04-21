require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/choice'
require_relative 'lib/computer'

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
    @player = $player
    erb(:play)
  end

  post '/choice' do
    @player = $player
    $choice = Choice.new(params[:shape])
    session[:computer_shape] = Computer.new.shape 
    redirect to('/result')
  end

  get '/result' do
    @computer_shape = session[:computer_shape]
    @player = $player
    @choice = $choice
    erb(:result)
  end


  run! if app_file == $0
end
