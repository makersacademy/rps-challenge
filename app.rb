require "sinatra/base"

class Rps < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/name" do
    @player= params[:player]
    # redirect "/play"
    erb :play
  end

  get '/play' do
    erb :play
  end

run! if app_file == $0
end
