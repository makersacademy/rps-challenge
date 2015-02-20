require 'sinatra/base'
require './lib/game'
reauire './lib/player'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
  @name = params[:name]
  erb :name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
