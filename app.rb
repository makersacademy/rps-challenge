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
    @winner_img = {
        "Won" => "https://i.pinimg.com/236x/a4/ec/34/a4ec34e6030cbaed84b9f81f3c052481.jpg",
        "Lost" => "http://gulagbound.com/wp-content/uploads/2012/04/MCP-TRON.jpg", 
        "Draw" => "https://tse4.mm.bing.net/th?id=OIP.ATwtgHmi3w_nCy0gS8ttxQAAAA&pid=Api" }
    erb(:played)
  end

  get '/human-human' do
    erb(:human_human)
  end

  post '/two-player' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    @rps_hash = { 
      "Rock" => "http://www.pngall.com/wp-content/uploads/2016/06/Rock-Free-PNG-Image-180x180.png",
      "Paper" => "http://sr.photos2.fotosearch.com/bthumb/CSP/CSP992/k13421890.jpg",
      "Scissors" => "http://www.pngall.com/wp-content/uploads/2016/03/Scissor-PNG-HD-180x180.png" }
    erb(:two_player)
  end

  get '/two-player' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    @rps_hash = { 
      "Rock" => "http://www.pngall.com/wp-content/uploads/2016/06/Rock-Free-PNG-Image-180x180.png",
      "Paper" => "http://sr.photos2.fotosearch.com/bthumb/CSP/CSP992/k13421890.jpg",
      "Scissors" => "http://www.pngall.com/wp-content/uploads/2016/03/Scissor-PNG-HD-180x180.png" }
    erb(:two_player)
  end

  get '/two-done-played' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    @player_1_choice = params[:player_1_choice]
    @player_2_choice = params[:player_2_choice]
    @rps_hash = { 
      "Rock" => "http://www.pngall.com/wp-content/uploads/2016/06/Rock-Free-PNG-Image-180x180.png",
      "Paper" => "http://sr.photos2.fotosearch.com/bthumb/CSP/CSP992/k13421890.jpg",
      "Scissors" => "http://www.pngall.com/wp-content/uploads/2016/03/Scissor-PNG-HD-180x180.png" }
    @winner_img = {
        "Won" => "https://i.pinimg.com/236x/a4/ec/34/a4ec34e6030cbaed84b9f81f3c052481.jpg",
        "Lost" => "http://gulagbound.com/wp-content/uploads/2012/04/MCP-TRON.jpg", 
        "Draw" => "https://tse4.mm.bing.net/th?id=OIP.ATwtgHmi3w_nCy0gS8ttxQAAAA&pid=Api" }
    erb(:two_done_played)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
