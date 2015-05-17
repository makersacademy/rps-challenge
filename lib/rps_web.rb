require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/game/new' do
  	erb :new_game
  end

  get '/game' do
  	erb :game
  end

  post '/game' do
  	@visitorname = params[:name]
  	if @visitorname && !@visitorname.empty?
  	  redirect '/game'
  	else
  	  redirect '/game/new'
  	end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
