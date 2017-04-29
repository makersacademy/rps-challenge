require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = params[:player]
    erb :play
  end

  post '/play' do
    @option = params[:option]
    erb :option
  end

  run! if app_file == $0

end
