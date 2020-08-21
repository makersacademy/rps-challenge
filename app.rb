require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base
  require_relative 'lib/game'
  require_relative 'lib/move'
  require_relative 'lib/player'

  enable :sessions

  get '/' do
    erb :index
  end
end