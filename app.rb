require 'sinatra/base'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    erb(:names)   
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
