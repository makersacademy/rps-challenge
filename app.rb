require 'sinatra'
require './lib/turn'
require './lib/rps'

before do
  @game = nil
end


get '/' do
  erb :form
end

post '/rps' do
  @name = params[:name]
  @game = RPS.start(@name)
  erb(:rps)
end

post '/game' do
  @choice = params[:choice]
  @turn = Turn.new(params[:choice])
  @computer_choice = @turn.computer_choice
  @result = @turn.result
  erb(:game)
end
