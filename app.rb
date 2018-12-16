require 'sinatra'
require_relative 'lib/player'

set :session_secret, 'super secret' ## this line is allowing us to work with shotgun

# my_app.rb
require 'sinatra/base'

class Game < Sinatra::Base
  # ... app code here ...

  get '/' do 
    'Testing infrastructure working!'
    erb :home
  end

  post '/name' do 
    erb :play, locals:{
      :player => Player.new(params['player_name'])
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end