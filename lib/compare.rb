class Compare
  def self.create_instance
    @instance ||= Compare.new
  end

  def self.instance
    @instance
  end

  def initialize
    @win_result = [["Scissors", "Paper"], ["Rock", "Scissors"], ["Paper", "Rock"]]
  end

  def result(user_choice, computer_choice)
    return "draw" if user_choice == computer_choice
    return "win" if @win_result.include?([user_choice, computer_choice])
    "lose"
  end
end
