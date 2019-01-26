class Enemy

  attr_reader :choice

  def initialize
    @choice = ['👊','🤚','✌️'].sample
  end

end
