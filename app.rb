require 'sinatra'


class RPS < Sinatra::Base
  get '/hello' do
    'Hello World'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end
end