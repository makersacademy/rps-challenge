require 'sinatra/base'

class RPS < Sinatra::Base


  get '/' do
      erb(:index)
    end


  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect :play #rendering the view
  end

  get '/play' do
    @player_1_name = $player_1.new
    @player_2_name = $player_2.new
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.new
    @player_2_name = $player_2.new
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
