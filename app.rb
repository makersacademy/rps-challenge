# frozen_string_literal: true

require 'sinatra/base'

# Understands game features
class Janken < Sinatra::Base

  get '/' do
    erb(:index)
  end

  run! if app_file == $PROGRAM_NAME
end
