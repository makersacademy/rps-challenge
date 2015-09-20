require 'sinatra/base'
require_relative 'game'
require 'sinatra/assetpack'

class RPSWeb < Sinatra::Base

set :views, proc { File.join(root, '..', 'views') }

register Sinatra::AssetPack

assets  {
    serve '/js',     from: 'app/js'        # Default
    serve '/css',    from: 'app/css'       # Default
    serve '/images', from: 'app/images'    # Default

    # The second parameter defines where the compressed version will be served.
    # (Note: that parameter is optional, AssetPack will figure it out.)
    # The final parameter is an array of glob patterns defining the contents
    # of the package (as matched on the public URIs, not the filesystem)
    js :app, '/js/app.js', [
      '/js/vendor/**/*.js',
      '/js/lib/**/*.js'
    ]

    css :application, '/css/application.css', [
      '/css/screen.css'
    ]

    js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
    css_compression :simple   # :simple | :sass | :yui | :sqwish
  }

enable :sessions


  get '/' do
    erb:index
  end

  post '/' do
   session[:choice] = params[:your_choice]
   redirect('/result')
  end

  get '/result' do
    @choice = session[:choice]
    game = Game.new(@choice)
    @result = game.play
    @computer = game.computer_choice
    erb:result
  end

  get '/testpage' do
    erb:testpage
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
