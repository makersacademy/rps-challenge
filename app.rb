require 'sinatra/base'


class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end
  
  post '/players' do
    $player = params[:name]
    erb(:players)
  end
  
  post '/move' do
    p params
    @move = params[:move]
    "#{$player} chose #{@move}!"
  end
  run! if app_file == $0
end