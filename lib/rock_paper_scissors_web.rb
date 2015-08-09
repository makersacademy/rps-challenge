require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_dir, proc { File.join(root, '..', 'public_dir') }

  get '/' do
    erb :index
  end

  get "/register" do
    erb :register
  end

  # post "/"

  # start the server if ruby file executed directly
  run! if app_file == $0
end
