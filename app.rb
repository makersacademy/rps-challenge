require 'sinatra'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params['name'])
  end

  run! if app_file = $0
end