class Weapons

  attr_reader :rules, :result

  def initialize
    @rules = {rock: :scissors,
              paper: :rock,
              scissors: :paper}
    @result = nil
  end

  def compare(choice1, choice2)
    @result = nil
    draw?(choice1, choice2) ? @result = :draw : fight(choice1, choice2)
  end

  private

  def draw?(choice1, choice2)
    choice1 == choice2
  end

  def fight(choice1, choice2)
    rules.each do |k,v|
      @result = choice1 if choice1 == k && choice2 == v
    end
    @result = choice2 if @result.nil?
  end

end
