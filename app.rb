require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = params[:name]
    "What is your selection #{@name}?"
  end
end
