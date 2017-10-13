require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @p1 = params[:p1]
    @p2 = params[:p2]
    erb :play
  end

  # get '/play' do
  #   @p1 = params[:p1]
  #   @p2 = params[:p2]
  #   p @p1
  #   erb :play
  # end

  run! if app_file == $PROGRAM_NAME
end
