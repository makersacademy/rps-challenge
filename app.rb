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

  post '/play' do
    $p1_choice = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @p1_name = $p1_name
    @p1_choice = $p1_choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
