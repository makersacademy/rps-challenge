require_relative 'player'

class Game

  attr_reader :player, :opponent

  def initialize(player = Player.new("Mystery Player"), opponent = Player.new("The Computer"))
    @player = player
    @opponent = opponent
    @choices = [:Rock, :Paper, :Scissors]
  end

  def view_choices
    @choices.dup
  end

  def player_selection(selection)
    @player_selection = selection
  end

  def computer_selection
    @choices.sample
  end

  def result(opponent_choice = computer_selection)
    case
      when @player_selection == :Rock && opponent_choice == :Rock
        draw
      when @player_selection == :Rock && opponent_choice == :Paper
        paper_beats_rock(@opponent)
      when @player_selection == :Rock && opponent_choice == :Scissors
        rock_beats_scissors(@player)
      when @player_selection == :Paper && opponent_choice == :Rock
        paper_beats_rock(@player)
      when @player_selection == :Paper && opponent_choice == :Paper
        draw
      when @player_selection == :Paper && opponent_choice == :Scissors
        scissors_beat_paper(@opponent)
      when @player_selection == :Scissors && opponent_choice == :Rock
        rock_beats_scissors(@opponent)
      when @player_selection == :Scissors && opponent_choice == :Paper
        scissors_beat_paper(@player)
      when @player_selection == :Scissors && opponent_choice == :Scissors
        draw
    end
  end

  private

  def draw
    "You both chose the same. It's a draw!"
  end

  def rock_beats_scissors(winner)
    "Rock beats Scissors. The winner is #{winner.name}"
  end

  def paper_beats_rock(winner)
    "Paper beats Rock. The winner is #{winner.name}"
  end

  def scissors_beat_paper(winner)
    "Scissors beat Paper. The winner is #{winner.name}"
  end

end
