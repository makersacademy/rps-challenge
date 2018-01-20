require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/how_to' do
    erb(:how_to)
  end

  run! if app_file == $0

end
