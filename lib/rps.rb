require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/game' do
    @visitor = params[:myname]
    redirect to('/') unless (@visitor != "" || @visitor == nil)
    session[:myname] = @visitor
    p session
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, '..', 'views') }
end
