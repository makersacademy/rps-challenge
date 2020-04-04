require 'sinatra/base'

class RockPaperScissor < Sinatra::Base 

  get '/' do
    erb :index
  end

  post '/start' do
    @name = params[:name]
    erb :welcome_player
  end

  post '/game' do
    @move = params[:Move]
    erb :who_wins
  end

  run! if app_file == $0
end
