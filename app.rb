require 'sinatra'
require "sinatra/reloader" if development?

require File.join(File.dirname(__FILE__), 'lib', 'player.rb')

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/register_name' do
    # Using globals until I know more about databases with Sinatra
    $player = Player.new(params[:player_name])
    redirect('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end