require 'sinatra/base'
require './lib/game'

class RpsGame < Sinatra::Base
  enable :sessions

  get '/' do
    "Time for some rock, paper and scissors!"
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

   get '/play' do
     @player_1_name = session[:player_1_name]
     erb :play
   end

   post '/rps' do
     session[:rps] = params[:rps]
     redirect '/game'
   end

   def results
     if @machine_choice == 'Rock' && @rps == 'Scissors'
       @result = 'Bad luck. The machine wins'
     elsif @machine_choice == 'Rock' && @rps == 'Paper'
       @result = 'Yehays, you win!'
     elsif @machine_choice == 'Rock' && @rps == 'Rock'
       @result = 'Its a bore draw'
     elsif @machine_choice == 'Scissors' && @rps == 'Rock'
       @result = 'Yehays, you win!'
     elsif @machine_choice == 'Scissors' && @rps == 'Paper'
       @result = 'The machine has sliced ya. Bad luck'
     elsif @machine_choice == 'Scissors' && @rps == 'Scissors'
       @result = 'Its a bore draw'
     elsif @machine_choice == 'Paper' && @rps == 'Rock'
       @result = 'The machine has wrapped you up. Bad luck.'
     elsif @machine_choice == 'Paper' && @rps == 'Scissors'
       @result = 'Yehays, you win!'
     elsif @machine_choice == 'Paper' && @rps == 'Paper'
       @result = 'Its a bore draw'
     end
   end

   get '/game' do
     @rps = session[:rps]
     game = Game.new
     @machine_choice = game.generate
     results
     erb :game
   end


# start the server if ruby file executed directly
run! if app_file == $0
end
