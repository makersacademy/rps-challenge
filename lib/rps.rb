require 'sinatra/base'
require_relative 'player'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class RockPaperScissors < Sinatra::Base
  set :views, settings.root + '/../views/'
   set :public_folder, settings.root + '/../public/'

  get '/' do
    erb :welcome
  end

  get '/registration' do
    erb :registration
  end

  post '/choice' do
    @player_name = params[:Name]
    player = Player.new params[:Name]
    erb :choice
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
