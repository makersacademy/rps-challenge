require_relative 'game'
class Player
  attr_reader :name

  def initialize name
    @name = name
  end

  def pick_a_choice
    begin
      puts "Enter rock, paper, or scissors."
      choice = gets.chomp.downcase
    end until Game::CHOICES.include?(choice)
  end
end