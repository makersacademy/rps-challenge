require 'sinatra'
require "sinatra/reloader" if development?
require 'pstore'

require File.join(File.dirname(__FILE__), 'lib', 'player.rb')

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  helpers do
    # Using PStore to store state
    # names need to be unique
    def add_player(player)
      data = PStore.new("#{player.name}.pstore")
      data.transaction do  
        data[player.name] = player.name 
        data.commit
      end
    end

    def load_player(name)
      data = PStore.new("#{name}.pstore")
      data.transaction do
        Player.new(data[name])
      end
    end

  end

  get '/' do
    erb(:index)
  end

  post '/register_name' do
    session[:player_name] = params[:player_name]
    add_player(Player.new(session[:player_name]))
    redirect('/play')
  end

  get '/play' do
    @player = load_player(session[:player_name])
    p "Player Name is: #{@player.name}"
    erb(:play)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end