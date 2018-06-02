require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
 end

 post '/players' do
   @player1_name = params[:player1_name]
   erb :players

 end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
