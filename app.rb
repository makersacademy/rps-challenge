require 'sinatra'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do    
    $player = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = $player 
    erb :play
  end
end
