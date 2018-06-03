require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = $player_name
    @game = $game
    @option = $option
    erb :play
  end

  post '/play' do
    $option = params[:option]
    $computer_option = Computer.new.option
    @computer_option = $computer_option
    redirect '/play'
  end

end
