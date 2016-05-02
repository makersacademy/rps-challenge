require 'sinatra/base'
require './lib/name_log'

class Rps < Sinatra::Base

  before do
      @player_name = NameLog.name
    end

  get '/' do
    if File.file?("./lib/name_log.txt")
      redirect '/splash'
    else
     erb :index
   end
 end

  post '/form' do
    @player = NameLog.create(params[:player_name])
    NameLog.log_name
    redirect '/splash'
  end


  get '/splash' do
    @player_name = File.open("./lib/name_log.txt").first.chomp
    erb :splash
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
