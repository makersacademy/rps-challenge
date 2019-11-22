require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end
end
