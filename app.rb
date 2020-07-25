require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/test' do
    'Testing RPS!'
  end

  post '/play' do
    @player_name = params[:player_name]
    erb(:play)
  end

  post '/result' do
    @option = params[:option]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
