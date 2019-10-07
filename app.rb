require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/battle'

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
    erb :home, locals:{
      :page_name => 'Begin'
    }
  end

  post '/name' do 
    @player = Player.store_name(params['player_name'])
    erb :play, locals:{
      :name => params['player_name'],
      :page_name => 'Choose'
    }
    
  end

  post '/move' do 
    ## here creting the singleton
    @player = Player.create_player(params['char'])
    ## battle logic
    fight = Battle.new(@player)
    ## fight play sets outcome variable which i thought was better then also returning it in one
    fight.play

    erb :end, locals:{
      :outcome => fight.outcome,
      :page_name => 'Results'
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end