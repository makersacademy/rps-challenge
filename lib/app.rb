require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'Rock is my favourite move'
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    puts params
    @player1 = params[:player1]
    erb(:play)
  end
end