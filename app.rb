require 'sinatra'
require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base

  # enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  run! if app_file == $0
end
