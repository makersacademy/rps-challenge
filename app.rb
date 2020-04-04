require 'sinatra/base'
class Game < Sinatra::Base

  get '/' do 
    @welcome_message = 'Welcome to rock paper scissors'
    erb :index
  end 

  post '/names' do
    @player_1 = params[:player_1]
    erb :play
  end

  run if app_file == $0
end 