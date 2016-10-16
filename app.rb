require 'sinatra/base'

class RpsChallenge < Sinatra::Base
enable :sessions

  get "/" do
  erb :index
  end

  get "/register" do

    erb :register
  end

  post "/confirmation" do

  end


  run! if app_file == $0
end
