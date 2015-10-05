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
    session[:name] = params[:name]
    redirect('/result')
  end

  get '/result' do
    game = Game.new(session[:choice])
    @name = session[:name]
    @result = game.play
    erb:result
  end

  get '/testpage' do
    erb:testpage
  end

  post '/selectletter' do
    @pick_a_letter = params[:pick_an_order]
    erb:selectletter
  end

  get '/twoplayer' do
    erb:twoplayer
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
