require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/welcome_rules' do
    $player_name = Player.new(params[:player_name])
    @player_name = $player_name
    erb(:welcome_rules)
  end

  get '/play' do
    @player_name = $player_name
    erb(:play)
  end

  post '/attack' do
    @player_name = $player_name
    redirect '/play'
  end

  run! if app_file == $0
end
