require 'sinatra/base'
require_relative 'rps'

#file should be called server.rb??

class RpsWeb < Sinatra::Base

  enable :sessions
  set :views, Proc.new { File.join(root, "..", "views") }
  # why do we need to tell sinatra where the views are, we didn't need this for the cat?

  get '/' do
    erb :index
  end

  post '/' do
    params[:player1].nil? ? @player1 = "" : @player1 = params[:player1]
    if @player1.length > 2
       redirect "/gamepage"
       erb :gamepage
    else
      @errormsg = true
      erb :index
    end
  end

  get '/gamepage' do
    erb :gamepage
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
