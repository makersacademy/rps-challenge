require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:plyr_name] = params[:name]
    @player = session[:plyr_name]
    erb(:play)
  end


  run! if app_file == $0
end
