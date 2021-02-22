class RPS

attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.start(name)
    @game = RPS.new(name)
  end

end
