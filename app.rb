require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_name = params[:player_name]
    redirect('/game')
  end

  get '/game' do
    @player_name = $player_name
    erb(:game)
  end

  post '/result' do
    $player_choice = params[:choice]
    redirect('/result')
  end

  get '/result' do
    @player_name = $player_name
    @player_choice = $player_choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
