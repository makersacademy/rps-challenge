require 'sinatra/base'

class RPSGame < Sinatra::Base
  get '/' do
    'Hello RPSGame!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
