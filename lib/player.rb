class Player
  attr_reader :name
  attr_accessor :status

  def initialize(name, status: true)
      @name = name
      @status = status
  end


end