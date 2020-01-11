require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/player-form' do
    $player1 = params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    erb(:play)
  end
end