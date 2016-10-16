require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post'/choose' do
    @player1 = params[:player1]
    erb :choose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
