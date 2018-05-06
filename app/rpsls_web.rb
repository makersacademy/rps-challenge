require 'sinatra/base'


class RPSLSWeb < Sinatra::Base

  enable :sessions

  helpers do
    def current_player
      Player.find(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end
  end

  before do

  end

  get '/' do
    erb :name
  end

  post '/names' do
    player = Player.new[params[:name]]
    add_player(player)
    redirect '/welcome'
  end

  get '/welcome' do
    erb :welcome
  end

  post '/single' do

  end

  post '/multi' do

  end

  run! if __FILE__ == $0

end
