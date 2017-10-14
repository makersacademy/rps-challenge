require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    redirect '/register'
  end

  get '/register' do
    erb :register
  end

  run! if app_file == $0
end
