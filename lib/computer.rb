class Computer
  def pick
    [:rock, :paper, :scissors].sample
  end

  def self.pick
    Computer.new.pick
  end
end
