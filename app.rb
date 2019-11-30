require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = params[:player1]
    erb(:play)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
