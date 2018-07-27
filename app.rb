require 'sinatra'
require 'securerandom'
class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do

    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME

end
