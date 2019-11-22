require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player-name' do
    session[:name] = params[:name]
    @player = session[:name]
    erb(:play)
  end

  # get '/play' do
  #   @player = session[:name]
  # will dev. later
  # end

end
