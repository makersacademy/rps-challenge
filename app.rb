require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    'Welcome to Rock, Paper, Scissors!'
    erb(:index)
  end

  post '/game' do
    @player_name = params[:name]
    erb(:game)
  end

  run! if app_file == $0
end
