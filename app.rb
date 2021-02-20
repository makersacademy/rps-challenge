require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  $player_name=(params[:player_name])
  redirect '/display_name'
end

get '/display_name' do
  @player_name = $player_name
  erb :display_name
  end

run! if app_file == $0

end
