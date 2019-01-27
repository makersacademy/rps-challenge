require 'sinatra/base'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @rps_hash = { 
      "Rock" => "http://www.pngall.com/wp-content/uploads/2016/06/Rock-Free-PNG-Image-180x180.png",
      "Paper" => "http://sr.photos2.fotosearch.com/bthumb/CSP/CSP992/k13421890.jpg",
      "Scissors" => "http://www.pngall.com/wp-content/uploads/2016/03/Scissor-PNG-HD-180x180.png" }
    erb(:names)   
  end

  get '/names' do
    @player_1 = params[:player_1]
    @rps_hash = { 
      "Rock" => "http://www.pngall.com/wp-content/uploads/2016/06/Rock-Free-PNG-Image-180x180.png",
      "Paper" => "http://sr.photos2.fotosearch.com/bthumb/CSP/CSP992/k13421890.jpg",
      "Scissors" => "http://www.pngall.com/wp-content/uploads/2016/03/Scissor-PNG-HD-180x180.png" }
    erb(:names)   
  end

  get '/played' do
    @player_1 = params[:player_1]
    @player_1_choice = params[:player_1_choice]
    @rps_hash = { 
      "Rock" => "http://www.pngall.com/wp-content/uploads/2016/06/Rock-Free-PNG-Image-180x180.png",
      "Paper" => "http://sr.photos2.fotosearch.com/bthumb/CSP/CSP992/k13421890.jpg",
      "Scissors" => "http://www.pngall.com/wp-content/uploads/2016/03/Scissor-PNG-HD-180x180.png" }
    erb(:played)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
