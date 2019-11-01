require "sinatra/base"
# require "./lib/game"
# require "./lib/player"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
