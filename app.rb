require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'string'

  get '/' do
    erb :registration
  end

  post '/battleground' do
    @player1 = params[:player_1_name]
    erb :battleground
  end

  run! if app_file == $0
end
