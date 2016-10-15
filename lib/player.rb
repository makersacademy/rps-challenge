require 'spec_helper'
require 'csb.rb'

class Player
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

end
