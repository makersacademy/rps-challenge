require 'sinatra/base'

class RPS < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
end


post '/names' do
  session[:player_1_name] = params[:player_1_name]
   redirect '/play'
end


get '/play' do 
  @player_1_name = session[:player_1_name]
  @rock_paper_scissor = session[:rock_paper_scissor]
  @opponent_selects = session[:opponent_selects]
  erb :play
end


post '/play' do
  session[:rock_paper_scissor] = params[:rock_paper_scissor]
  session[:opponent_selects] = :paper
  redirect '/play'
end



  run! if app_file == $0
end