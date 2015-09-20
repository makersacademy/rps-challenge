class Computer

  attr_reader :auto

  def auto
    [:rock, :paper, :scissors].shuffle.first
  end
  
end
