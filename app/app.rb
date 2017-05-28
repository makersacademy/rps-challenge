require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  attr_reader :player_name

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
