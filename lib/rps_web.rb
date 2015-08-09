require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    'Hello RockPaperScissors!'
    erb :index
  end

  get '/name' do
    @visitor = params[:name]
    session[:name] = @visitor
    erb :name
  end

  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
