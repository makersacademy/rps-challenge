require 'sinatra'
require 'sinatra/base'

class Player < Sinatra::Base

attr_accessor :name

  def initialize(name)
    @name = name
  end

end
