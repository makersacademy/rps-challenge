require 'capybara'
require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    redirect '/game'
  end
  
  get '/game' do
    erb :game
  end

  run! if app_file == $0

end