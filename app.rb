require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/choose" do
    @name = params[:name]
    erb :choose
  end

  get "/result" do
    erb :result
  end

  run! if app_file == $0
end
