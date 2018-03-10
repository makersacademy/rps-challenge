require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :sessions, true

  get '/' do
    'Testing infrastrcuture working!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
