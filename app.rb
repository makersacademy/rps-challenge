require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/enter_name' do
    erb :enter_name
  end

  post '/choose_weapon' do
    @player_name = params[:player_name]
    erb :choose_weapon
  end

  run! if app_file == $0

end
