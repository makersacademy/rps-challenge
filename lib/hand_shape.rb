class HandShape

  attr_reader :name, :weaknesses

  def initialize(name=nil, weaknesses=nil)
    @name = name
    @weaknesses = weaknesses
  end
end
