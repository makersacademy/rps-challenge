require 'sinatra'

class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end
end