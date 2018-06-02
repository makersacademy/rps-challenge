require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/' do
    @player = params[:name]
    erb(:index)
  end

  post '/player' do
    @player = params[:name]
    erb(:player)
  end

  run! if app_file == $0
end
