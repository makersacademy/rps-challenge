require 'sinatra/base'
require 'sinatra'

class RPSGame < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player = params[:user_name]
    erb(:play)
  end

  run! if app_file == $0
end
