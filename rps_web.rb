require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/infrastructure_testing' do
    'Hello RPSWeb!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
