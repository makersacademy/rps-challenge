# this page should handle the computer's response.
class Ai

  attr_reader :choice

  def initialize
    @choice = ['rock','paper','scissors'].sample()
  end

end
