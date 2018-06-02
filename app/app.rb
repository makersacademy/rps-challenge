require 'sinatra/base'


class RPSLS < Sinatra::Base


  get '/' do
    erb :specify_player_name
  end

  post '/save_player_name' do
    $player_name = params[:player_name] unless $player_name
    redirect '/enter_the_arena'
  end

  get '/enter_the_arena' do
    erb :enter_the_arena
  end

end