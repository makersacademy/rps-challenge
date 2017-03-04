require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    "Welcome!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
