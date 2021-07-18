require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = params[:player]
    redirect to('/game')
  end

  get '/game' do
    @player = $player
    erb(:game)
  end

  post '/choice' do
    p params
    $choice = params[:choice]
    redirect to('/result')
  end

  get '/result' do
    @choice = $choice
    erb(:result)
  end

end