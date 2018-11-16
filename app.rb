require 'sinatra/base'
# require 'rps'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params[:name]
    erb(:play)
  end

  post '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
