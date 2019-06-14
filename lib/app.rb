require 'sinatra/base'

class Rps << Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(player)
    redirect :play
  end

  run! if app_file == $0
end
