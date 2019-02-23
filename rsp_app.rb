require "sinatra/base"

class Playing < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/movement" do
    @name = params[:name]
    erb :askMovement
  end


  post '/showResult' do
  end

run! if app_file == $0
end
