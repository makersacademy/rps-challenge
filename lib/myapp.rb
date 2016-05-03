require 'sinatra/base'

class MyApp < Sinatra::Base


    enable :sessions


  get '/' do
    erb :index
  end
#temp bad bad bad global variable
  post '/names' do
$game = Game.new(Player.new(params[:player_name]))
    redirect '/play'

  end

  get '/play' do
  @player_name = $game.named_player
  erb :play

  end
  post '/result' do
    @player_name = $game.named_player
    session[:rps] = params[:rps]
    @hand_selection = session[:rps]
    redirect '/rps-results'
  end

  get '/rps-results' do
    @player_name = $game.named_player
    @hand_selection = session[:rps]
    erb :game

  end


  run! if app_file == $0
end