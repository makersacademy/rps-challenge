require 'sinatra'

class RPS < Sinatra::Base
  get '/test' do
    "Testing"
  end

  get '/' do
    "Please enter your name
    <form action='/game' method='get'>
    <input type='text' name='player_name'>
    <input type='submit' name='Start game'>
    </form>"
  end

  get '/game' do
    @player_name = params[:player_name]
    erb :game
  end


  run! if app_file == $0
end