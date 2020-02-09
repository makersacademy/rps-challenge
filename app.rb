require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/rps' do
    @player_name = params[:player_name]
    erb :rps
  end

  get '/result' do
    @move_choice = params[:move]
    erb :result
  end

  run! if app_file == $0
end
