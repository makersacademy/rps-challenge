require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/play'
require './lib/machine_choice'

class Rps < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    enable :sessions

    # Index page allows the user to insert their name.
    get '/' do
        erb :index
    end
    # After clicking submit on the index page, it is posted to /names, saved as a session and redirected to the /play page to be displayed.
    post '/name' do
        session[:name] = params[:name]
        redirect '/play'
    end
    # The play page will not display any upcoming choices by the machine until the user has made a selection.
    get '/play' do
        @play = Play.new(session)
        # session[:machine_choice] = @play.machine_choice - This is how I previously attempted to insert a machine_choice using only one class.
        erb :play
    end
    # Once the user makes a selection, both choices and outcome will be displayed.
    post '/play' do
        session[:choice] = params[:choice].downcase.to_sym
        session[:machine_choice] = MachineChoice.new.machine_choice.to_sym
        redirect '/play'
    end
    # Returns all the sessions "variables" to nil and redirects the user to the index page.
    post '/restart' do
        session[:choice] = nil
        session[:name] = nil
        session[:machine_choice] = nil
        redirect '/'
    end
    # Runs the server when this file is run.
    run! if app_file == $0
end