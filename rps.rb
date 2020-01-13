require 'sinatra/base'


class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player = params[:player_name]
    erb :play
  end


run! if app_file == $0
end
