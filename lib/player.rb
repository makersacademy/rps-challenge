class Player

  attr_reader :name, :user_choice, :computer_choice, :outcome, :rules

  def initialize(name)
    @name = name
    @user_choice = nil
    @computer_choice = ["scissors", "rock", "paper"].sample
    @outcome = nil
    @rules = {
  :rock     => { :rock => "draw", :paper => "lose", :scissors => "win" },
  :paper    => { :rock => "win", :paper => "draw", :scissors => "lose" },
  :scissors => { :rock => "lose", :paper => "win", :scissors => "draw" }
}
  end

  def choose_weapon(user_choice)
    @user_choice = user_choice
  end
  #
  # def random_choice
  #   @computer_choice = ["Scissors", "Rock", "Paper"].sample
  # end

  def play_game
    @outcome = @rules[@user_choice.to_sym][@computer_choice.to_sym]
  end

end
