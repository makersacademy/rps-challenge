require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
  p params
  @name = params[:name]
  erb (:index)
end