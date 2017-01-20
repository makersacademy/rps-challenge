require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello RPS!'
  end

  get '/register' do
    erb :index
  end

  post '/name' do
    @p1_name = params[:p1_name_input]
    erb :play # same as an internal GET
  end

  post '/result' do
    @p1_choice = params[:p1_choice_input]
    erb :winner # same as an internal GET
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
