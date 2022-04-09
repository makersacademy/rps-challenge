require 'sinatra'
require 'sinatra/reloader'

class Rockps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
end

get '/' do
  'Welcome to the game of Rock Paper Scissor'
end
