# frozen_string_literal: true

# Understands managing the winning process
class Game

  attr_accessor :player_one, :player_two
  attr_reader :session

  def self.set_session
    @session = Game.new
  end

  def self.session
    @session
  end

  def draw?
    @player_one.selection == @player_two.selection
  end

  def player_one_win?
    rock_beats_scissors || paper_beats_rock || scissors_beats_paper
  end

  private

  def rock_beats_scissors
    @player_one.selection == 'Rock' && @player_two.selection == 'Scissors'
  end

  def paper_beats_rock
    @player_one.selection == 'Paper' && @player_two.selection == 'Rock'
  end

  def scissors_beats_paper
    @player_one.selection == 'Scissors' && @player_two.selection == 'Paper'
  end
end
