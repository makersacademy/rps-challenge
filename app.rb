require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base

  get '/' do
  erb(:index)
end

post '/names' do
  params[:player1_name]
end

end