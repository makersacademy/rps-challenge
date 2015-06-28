require 'sinatra/base'

class RpsApp < Sinatra::Base

  set :views, proc {File.join(root,'..','views')}

  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  post '/played' do
    @player_selection = params[:selections]
    @opponent_selection = ['Rock', 'Paper', 'Scissors'].sample
    erb :played
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
