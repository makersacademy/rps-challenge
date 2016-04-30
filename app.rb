require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    'Hello world'
  end

  get '/secret' do
    "I like potato"
  end

  get '/cat' do
    erb :index
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end