require 'sinatra/base'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

class Multiplayer < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }
  enable :sessions
  set :session_secret, "stap ron"

  get '/test' do
    erb :mama
  end

  get '/multiplayer' do
    erb :multiplayer
  end
end
