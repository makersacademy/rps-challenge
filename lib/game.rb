require_relative 'player'

class Game

  attr_reader :player, :opponent

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

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
    "#{@player.name} choice is #{@player_selection} and #{@opponent.name} choice is #{opponent_choice}"
    case
      when @player_selection == "Rock" && opponent_choice == "Rock"
        "You both chose the same. It's a draw!"
        # draw
      when @player_selection == "Paper" && opponent_choice == "Paper"
        "You both chose the same. It's a draw!"
        # draw
      when @player_selection == "Scissors" && opponent_choice == "Scissors"
        "You both chose the same. It's a draw!"
        # draw
      when @player_selection == "Paper" && opponent_choice == "Rock"
        "Paper beats Rock. The winner is #{@player.name}"
        # paper_beats_rock(@player)
      when @player_selection == "Rock" && opponent_choice == "Paper"
        "Paper beats Rock. The winner is #{@opponent.name}"
        # paper_beats_rock(@opponent)
      when @player_selection == "Rock" && opponent_choice == "Scissors"
        "Rock beats Scissors. The winner is #{@player.name}"
        # rock_beats_scissors(@player)
      when @player_selection == "Scissors" && opponent_choice == "Rock"
        "Rock beats Scissors. The winner is #{@opponent.name}"
        # rock_beats_scissors(@opponent)
      when @player_selection == "Scissors" && opponent_choice == "Paper"
        "Scissors beat Paper. The winner is #{@player.name}"
        # scissors_beat_paper(@player)
      when @player_selection == "Paper" && opponent_choice == "Scissors"
        "Scissors beat Paper. The winner is #{@opponent.name}"
        # scissors_beat_paper(@opponent)
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
