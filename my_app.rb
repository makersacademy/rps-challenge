require 'sinatra/base'
require './lib/game.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
     player_1 = Player.new(params[:player_1])
     computer = Player.new('computer')
     @game = Game.create(player_1, computer)
     redirect '/play'
   end

   before do
     @game = Game.instance
   end

   get '/play' do
     erb :play
   end

   get '/rock' do
     @game.rock
     redirect '/win' if @game.result
     redirect '/lose' unless @game.result.nil?
     redirect '/draw'
   end

   get '/paper' do
     @game.paper
     redirect '/win' if @game.result
     redirect '/lose' unless @game.result.nil?
     redirect '/draw'
   end

   get '/scissors' do
     @game.scissors
     redirect '/win' if @game.result
     redirect '/lose' unless @game.result.nil?
     redirect '/draw'
   end

   get '/win' do
     erb :win
   end

   get '/lose' do
     erb :lose
   end

    get '/draw' do
      erb :draw
    end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
