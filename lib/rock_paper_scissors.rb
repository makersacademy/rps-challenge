require 'sinatra/base'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

	enable :sessions

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

  get '/newgame' do
  	@visitor = session[:name]
  	erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
