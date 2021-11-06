require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader 
  end
 
  get '/' do
    erb(:index)
    # redirect '/play'
  end

  post '/' do
    'Welcome Doby!'
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end