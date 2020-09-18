require 'sinatra/base'

class RPSLS < Sinatra::Base

  get '/' do
    erb :login
  end

  post '/names' do
    @p1, @p2 = params[:p1], params[:p2]
    "#{@p1} v #{@p2}"
  end


  run! if app_file == $0

end
