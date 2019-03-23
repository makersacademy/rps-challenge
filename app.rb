require 'sinatra'

get '/' do
  erb :index
end

post '/post_name' do
  