require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1_name = params[:player_1_name]
    erb :name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
