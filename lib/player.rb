class Player
  attr_reader :name 
  attr_accessor :play_option

  def initialize(name)
    @name = name
    @play_option = ''
  end
end
