require 'sinatra/base'
require 'sinatra/reloader'

class RPSGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $p1_name = params[:p1_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = $p1_name
    erb :play
  end

  run! if app_file == $0

end