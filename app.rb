require 'sinatra/base'

class RPS < Sinatra::Base

# get '/' do
#   "We have green lights!"
# end

get '/' do
  erb :index
end

post '/names' do
  @player_name = params[:player_name]
  erb :play
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
