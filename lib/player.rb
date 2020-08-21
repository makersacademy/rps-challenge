class Player
  def self.create(name)
    @name = name
  end

  class << self
    attr_reader :name
  end
end
