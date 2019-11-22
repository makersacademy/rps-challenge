require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/test-infrastructure' do
    "Test infrastructure correctly functioning"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $name = params[:name]
    redirect '/confirm'
  end

  get '/confirm' do
    @name = $name
    erb :confirm
  end

  post '/start-game' do
    redirect '/game'
  end

  get '/game' do
    @name = $name
    erb :game
  end

  post '/move' do
    $move = params[:move]
    redirect '/result'
  end

  get '/result' do
    @move = $move
    erb :result
  end

end
