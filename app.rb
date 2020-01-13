require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/enter_name' do
    @user = Player.new(params[:name], param[:choice])
    erb :play
  end

  get '/rock' do
    erb :rock
  end

  run! if app_file == $0
end
