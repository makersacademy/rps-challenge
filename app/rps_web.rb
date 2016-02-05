require 'sinatra/base'



class RPSWeb < Sinatra::Base
  # use Rack::Session::Pool, :expire_after => 2592000
  # set :sesion_secret, "super secret"

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
