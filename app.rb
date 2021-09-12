require 'sinatra'
require 'sinatra/reloader' if development?


post '/' do
  p params
  @name = params[:name]
  erb (:index)
end