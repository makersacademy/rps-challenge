require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/players' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :arena
  end

  run! if app_file == $0
end
