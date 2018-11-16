require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :name
  end

  post '/start' do
    @player_1 = params[:player_1]
    erb :start
  end

run! if app_file == $0

end
