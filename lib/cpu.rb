class Cpu

  def self.run
    new.choice
  end

  def choice
    [:rock, :paper, :scissors].sample
  end

end
