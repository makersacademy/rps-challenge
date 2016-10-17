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
  $computer_play = game.play
  erb(:playrock)
  if $computer_play == "rock"
    redirect '/draw'
  elsif $computer_play == "paper"
    redirect '/lose'
  elsif $computer_play == "scissors"
    redirect '/win'
  end
end

get '/playpaper' do
  game = Game.new
  $computer_play = game.play
  erb(:playpaper)
  if $computer_play == "paper"
    redirect '/draw'
  elsif $computer_play == "scissors"
    redirect '/lose'
  elsif $computer_play == "rock"
    redirect '/win'
  end
end

get '/playscissors' do
  @computer_play = $computer_play
  erb(:playscissors)
  if $computer_play == "scissors"
    redirect '/draw'
  elsif $computer_play == "paper"
    redirect '/win'
  elsif $computer_play == "rock"
    redirect '/lose'
  end
end

get '/win' do
  erb(:win)
end

get '/lose' do
  erb(:lose)
end

get '/draw' do
  erb(:draw)
end
