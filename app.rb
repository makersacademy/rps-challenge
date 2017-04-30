require "sinatra"

  get '/' do
    "Hello World"
  end

  get '/name' do
    erb:index
  end
