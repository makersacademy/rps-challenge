require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/rps' do
    @name = params[:name]
    erb :rps
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
