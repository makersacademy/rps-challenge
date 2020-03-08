require 'sinatra/base'
class RPS < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/name' do
    @name = params[:player_name]
    erb :play
  end
  post '/play' do
    @move = params[:move].to_sym
    @opponent = random
    erb :result
  end

  def random 
    [:Rock, :Paper, :Scissors].sample  
  end  
  run! if app_file == $0
  
end
