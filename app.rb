require "sinatra/base"

class RPS < Sinatra::Base
  get "/" do
    params[:player1]
    erb :index
  end

  run! if app_file == $0
end
