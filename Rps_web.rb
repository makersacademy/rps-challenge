require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/human'
require_relative 'lib/computer'
require_relative 'lib/game'

class Rps_web < Sinatra::Base

  set :views, proc { File.join(root, 'views') }
  enable :sessions

  get '/' do
    erb :name
  end
