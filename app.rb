require 'sinatra/base'
require 'sinatra/reloader'

class Game 
  def result
    :win
  end 
end

class RockPaperScissors < Sinatra::Base
    enable :sessions

    configure :development do
      register Sinatra::Reloader
    end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:marketer_name_1] = params[:marketer_name_1]
    redirect '/play'
  end

  get '/play' do
    @marketer_name_1 = session[:marketer_name_1]
    erb :play
  end

  post '/result' do
    erb :result
  end

# start the server if ruby file executed directly
  run! if app_file == $0

end