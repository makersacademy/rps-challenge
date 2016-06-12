require 'sinatra/base'

class Rps < Sinatra::Base

  get('/') do
    erb(:index)
  end

  get('/name') do
    erb(:name)
  end

  post('/name') do
    @player_1 = params[:player_1]
    erb(:select_weapon)
  end

  run! if app_file == $0
end
