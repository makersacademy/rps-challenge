require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    'Yoooo lets get Rock, Paper, Scissors going!'
    erb(:index)
  end

  post '/name' do
    @name = params[:name]
    erb(:register)
  end

  run! if app_file == $0

end
