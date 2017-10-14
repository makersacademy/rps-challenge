require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    'Hello Tom'
  end

  run! if app_file == $0
end
