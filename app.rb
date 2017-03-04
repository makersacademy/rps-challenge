require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/start' do
    session[:username] = params[:username]
    redirect '/welcome'
  end

  get '/welcome' do
    @username = session[:username]
    erb :welcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# .sample https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_erb.md

# render 'if' statement: https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_using_forms.md
