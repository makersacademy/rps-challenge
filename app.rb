require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/start' do
    @player_name = params[:player_name]
    erb(:start)
  end

  run! if app_file == $0
  set :session_secret, 'super secret'

end