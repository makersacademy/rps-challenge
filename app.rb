require 'sinatra'
require "sinatra/reloader" if development?
require 'pstore'

require File.join(File.dirname(__FILE__), 'lib', 'player.rb')

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # Change these to store data in ./data
  # extract Pstore processing into a separate class
  helpers do
    # Using PStore to store state
    def add_player(player)
      data = PStore.new("#{player.id}.pstore")
      data.transaction do  
        data[player.id] = [player.id,player.name]
        data.commit
      end
    end

    def load_player(player_id)
      data = PStore.new("#{player_id}.pstore")
      p "Player ID: #{player_id}"
      data.transaction do
        Player.new(data[player_id].last, data[player_id].first)
      end
    end

  end

  get '/' do
    erb(:index)
  end

  post '/register_name' do
    player = Player.new(params[:player_name])
    session[:player_id] = player.object_id
    add_player(player)
    redirect('/play')
  end

  get '/play' do
    @player = load_player(session[:player_id])
    p "Player Name is: #{@player.id}"
    erb(:play)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end
