require 'sinatra'

class RPS < Sinatra::Base

  sessions :player_name

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = Player.new(params[:player_name])
    redirect '/play'
  end

end
