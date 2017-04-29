require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    erb :play
  end

  run! if app_file == $0
end
