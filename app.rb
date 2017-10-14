require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/play' do
    @player = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
