class Player
  attr_reader :choice

  def initialize options
    @options = options
    @choice = nil
  end

  def choose hand
    unless options.include?(hand)
      fail 'Invalid Choice: only rock, paper or scissors available'
    end
    @choice = hand
  end

  private

  attr_reader :options
end
