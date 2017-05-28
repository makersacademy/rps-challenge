require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  attr_reader :player

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.new(params[:player_name])
    erb :play
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
