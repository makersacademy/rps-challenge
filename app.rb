require 'sinatra/base'

class Game  < Sinatra::Base
  get ('/') do
    "Battle of the inanimate objects"
  end
end
