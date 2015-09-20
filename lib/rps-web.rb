require 'sinatra/base'

class RPSWeb < Sinatra::Base

  set :public_folder, proc {File.join(root, '..', 'public')}
  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions, :static

  get '/' do
    erb :index
  end

  post '/sign-up' do
    session[:name] = params[:name]
    redirect '/account'
  end

  get '/account' do
    @user = session[:name]
    erb :account
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
