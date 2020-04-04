require 'sinatra/base'
require './lib/player'

class Game < Sinatra::Base
  enable :sessions

  get '/' do 
    @welcome_message = 'Welcome to rock paper scissors'
    erb :index
  end 

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    redirect '/play'
  end

get '/play' do 
  @player_1 = $player_1.name
  erb :play
end 

post '/round_1' do 
  @attack = params[:attack] 
  erb :round_1
end 



  run if app_file == $0
end 