require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
  erb(:index)
  end

  get '/rules' do
    @player1 = session(params[:player1])
    @player2 = session(params[:player2])
    erb(:rules)
  end

  run! if app_file == $PROGRAM_NAME

end
