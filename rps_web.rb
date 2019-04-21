require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    'Testing infrastructure working! Gumbie!'
  end

end
