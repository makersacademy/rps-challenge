require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base
  
  enable :sessions

  get '/' do 
    erb(:index)
  end
  

  post '/name' do
    $player = Player.new(params[:name])
    redirect('play')
  end

  get '/play' do
    @player = $player 
    erb(:play)
  end

  get '/choice' do
    @player = $player
    erb(:choice)
  end

  run! if app_file == $0
end
