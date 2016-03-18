require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/' do
    $p1_name = session[:p1_name] = params[:p1_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = $p1_name
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
