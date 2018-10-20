class Game

  attr_reader :result

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize
    @result = ""
  end

  def check_choices(player_choice, computer_choice)
    RULES.select do |k, v|
      if player_choice == k && computer_choice == k
        @result = "It's a draw"
      elsif
        player_choice == k && computer_choice == v
        @result = "You win!"
      elsif
        player_choice == v && computer_choice == k
        @result = "You lose!"
      end
    end
  end

  # def result(player_choice, computer_choice)
  #   RULES.select do |k, v|
  #     if player_choice == k && computer_choice == k
  #       @result = "It's a draw"
  #     elsif
  #       player_choice == k && computer_choice == v
  #       @result = "You win!"
  #     elsif
  #       player_choice == v && computer_choice == k
  #       @result = "You lose!"
  #     end
  #   end
  # end

end
