require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    'Welcome to Rock-Paper-Scissors game!'
  end

  # start the server when ruby file executed directly
  run! if app_file == $0
end
