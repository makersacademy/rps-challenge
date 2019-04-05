require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Rock Paper Scissors!'
  end

end
