class Computer

  attr_reader :weapon

  def move
    @weapon = ['rock','paper','scissors'].sample
  end
end
