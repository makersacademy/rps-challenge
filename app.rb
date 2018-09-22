require "sinatra/base"
require "./lib/game"
require "./lib/player"

class Rock < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

end
