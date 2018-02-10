require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"


class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end



  run! if app_file == $0

end
