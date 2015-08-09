require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

	set :views, proc {File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', 'pub') }

  get '/' do
    erb :index
  end

  get '/name_set' do
  	erb :enter_name
  end

  get '/play' do
  	@name = params[:name]
  	erb :game
  end

  get '/respond' do
    erb :respond?
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
