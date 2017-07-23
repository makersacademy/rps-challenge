class Game
  
  attr_reader :player_choice, :computer_choice
  
  def initialize(player_choice, computer_choice = [:rock, :paper, :scissor].sample)
    puts "Player's choice is: #{@player_choice = player_choice}"
    puts "Computer's choice is: #{@computer_choice = computer_choice}"
  end 

  RULES = {
    :rock => { :rock => :draw, :paper => :paper, :scissor => :rock },
    :paper => { :rock => :paper, :paper => :draw, :scissor => :scissor },
    :scissor => { :rock => :rock, :paper => :scissor, :scissor => :scissor }
  }

  def lets_play(player_choice, computer_choice)
    RULES[player_choice][computer_choice]
  end

end

#game = Game.new(gets.chomp.to_sym)
#puts game.lets_play
