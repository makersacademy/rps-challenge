require 'sinatra/base'

class RPSWeb < Sinatra::Base
  # Some basic setup stuff to get Sinatra working
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions

  # Welcome screen and name entry
  get '/' do
    erb :index
  end

  post '/play' do
    # Name entry checks go first
    if params.has_key?('name')
      redirect '/' unless params[:name].length > 0
      @@name = params[:name]
    elsif not(defined?(@@name))
      redirect '/'
    end

    # Make variables accessible from the ERB file
    @name = @@name
    erb :play

  end

  get '/play' do
    # THIS SHOULD NEVER BE CALLED?!
    erb :play
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
