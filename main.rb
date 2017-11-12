#controller
require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
   erb :index
  end

  post '/startpage' do
    @player = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
