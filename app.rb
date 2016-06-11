require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/welcome_rules' do
    $player_name = params[:player_name]
    @player_name = $player_name
    erb(:welcome_rules)
  end

  post '/play' do
    @player_name = $player_name
    erb(:play)
  end

  run! if app_file == $0
end
