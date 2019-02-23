require "sinatra/base"

class Game < Sinatra::Base

  get '/' do
    erb :display
  end

  post '/name' do
    @player = params[:player]
    erb :play

  end




  run! if app_file == $0
end
