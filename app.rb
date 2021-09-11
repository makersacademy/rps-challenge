require "sinatra"
require "sinatra/base"
require "sinatra/reloader"

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Hello World!"
    erb :index
  end

  # get "/player" do
  #   @player = [:player]
  #   erb :play
  # end
  run! if app_file == $0
end
