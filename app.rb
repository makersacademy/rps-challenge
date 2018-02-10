require 'sinatra'

get '/' do
  erb(:index)
end

post '/' do
  @name = params[:player]
  erb(:game)
end

get '/winner' do
  erb(:winner)
end
