require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do 
    @player = $player
    erb :play
  end

  get '/result' do
    @player = $player
    @selection = $selection
    erb :result
  end

  post '/name' do
    $player = params['name']
    redirect '/play'
  end

  post '/rock' do
    $selection = 'Rock'
    redirect '/result'
  end

  post '/paper' do
    $selection = 'Paper'
    redirect '/result'
  end

  post '/scissors' do
    $selection = 'Scissors'
    redirect '/result'
  end

  run if app_file == $0
end