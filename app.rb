require 'sinatra'
require_relative './lib/game.rb'

get '/' do
    erb(:index)
end

post '/name' do
  $player = params[:player]
  redirect to '/print_name'
end

get '/print_name' do
  @player = $player
  erb(:print_name)
end

get '/playrock' do
  game = Game.new
  @computer_play = game.play
  erb(:playrock)
  if @computer_play == "rock"
    redirect '/draw'
  elsif @computer_play == "paper"
    redirect '/lose'
  elsif @computer_play == "scissors"
    redirect '/win'
  end
end

get '/playpaper' do
  game = Game.new
  @computer_play = game.play
  erb(:playpaper)
  if @computer_play == "paper"
    redirect '/draw'
  elsif @computer_play == "scissors"
    redirect '/lose'
  elsif @computer_play == "rock"
    redirect '/win'
  end
end

get '/playscissors' do
  game = Game.new
  @computer_play = game.play
  erb(:playscissors)
  if @computer_play == "scissors"
    redirect '/draw'
  elsif @computer_play == "paper"
    redirect '/win'
  elsif @computer_play == "rock"
    redirect '/lose'
  end
end

get '/win' do
  game = Game.new
  @computer_play = game.play
  erb(:win)
end

get '/lose' do
  game = Game.new
  @computer_play = game.play
  erb(:lose)
end

get '/draw' do
  game = Game.new
  @computer_play = game.play
  erb(:draw)
end
