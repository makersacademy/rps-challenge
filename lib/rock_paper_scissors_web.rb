require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/start' do
    @user_name = params[:player_name]
    erb :start
  end

  set :views, Proc.new { File.join(root, "..", "views") }
  # start the server if ruby file executed directly
  run! if app_file == $0
end
