require 'sinatra/base'

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
    'Rock'
  end

  get '/paper' do
    'Paper'
  end

  get '/scissors' do
    'Scissors'
  end

  run! if app_file == $0
end
