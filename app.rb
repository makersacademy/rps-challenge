require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base

configure :development do
  register Sinatra::Reloader
end 

get '/' do
  erb(:index)
end

post '/names' do
  @player1 = params[:player1_name]
end

end