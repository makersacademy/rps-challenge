require 'sinatra/base'
require 'capybara'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/play' do
    erb :play
  end

  get '/game' do
    erb :game
  end

  run! if app_file == $0
end
