require 'sinatra/base'

class RPSLSWeb < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, 'views') }

#Home Page
  get '/' do
    erb :home_page
  end
#register player
  post '/name' do
    session[:name] = params[:name]
    redirect('/name') if params[:name].empty?
    redirect('/instructions')
  end

  get '/name' do
    erb :name
  end
#instructions
  get '/instructions' do
    @name = session[:name]
    erb :instructions
  end
#Rock-Paper-Scissors-Lizard-Spock
  # post 'throw' do
  #
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
