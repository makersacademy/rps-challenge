require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
    $player_name = params[:name]
    @player_name = $player_name
    redirect '/start'
  end

  get '/start' do
    @player_name = $player_name
    erb(:start_page)
  end

end
