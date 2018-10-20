require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

###unfinished block############
  get '/player_makes_move' do #
    @player_1_move =          #
    erb :player_makes_move    #
  end                         #
###############################

  run! if app_file == $0
end



#get '/attack' do
#  @player_1_name = session[:player_1_name]
#  @player_2_name = session[:player_2_name]
#  erb :attack
#end
