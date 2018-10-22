class Computer

  def weapon
    [:rock, :paper, :scissors].sample
  end

  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end

end
