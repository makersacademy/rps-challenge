require 'sinatra'
require_relative 'lib/player'

set :session_secret, 'super secret' ## this line is allowing us to work with shotgun

# my_app.rb
require 'sinatra/base'

class Game < Sinatra::Base
  # ... app code here ...

  before do 
    @player = Player.instance
  end

  get '/' do 
    'Testing infrastructure working!'
    erb :home
  end

  post '/name' do 
    @player = Player.create_player(params['player_name'])
    erb :play
    
  end

  post '/move' do 
    #  @player = Player.create_player(params['player_name'])
    erb :end, locals:{
      :move => params['char']
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end