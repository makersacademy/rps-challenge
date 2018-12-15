require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/rps-choice' do
    @player_1 = params[:player_1]
    erb :choice
  end

  run! if app_file == $0
end
