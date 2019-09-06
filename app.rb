require 'sinatra/base'

class Rps < Sinatra::Base
enable :sessions

get '/' do
  erb(:index)
end

post '/initialise' do
  @player1 = params[:player1]
  @player2 = params[:player2]
  erb(:initialise)
end

run! if app_file == $0
end