require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  $player_name=(params[:player_name])
  redirect '/display_name'
  end

  get '/display_name' do
  @player_name = $player_name
  erb :display_name
  end

  post '/display_name' do
    redirect '/new_game'
  end

  get '/new_game' do
    erb :new_game
  end

  get '/rock' do
  @choice = "rock"
    erb :result
  end

  get '/paper' do
  @choice = "paper"
    erb :result
  end

  get '/scissors' do
  @choice = "scissors"
    erb :result
  end

run! if app_file == $0

end
