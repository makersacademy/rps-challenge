require 'sinatra/base'

class RPSApp < Sinatra::Base

  get '/welcome' do
    erb :index
  end

  post '/names' do
    @names = params[:names]
    erb :play
  end
# start the server if the ruby file executed directly
run! if app_file == $0
end
