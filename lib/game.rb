class Game

  @current_game = nil

  attr_reader :player_choice, :computer_choice, :winning_choice, :losing_choice, :player, :winning_player

  def self.start(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end

  def initialize(player)
    @player = player
  end

  def player_choice=(choice)
    @player_choice = choice.downcase.to_sym
  end

  def run_computer
    @computer_choice = options.sample
  end

  def end_game
    run_computer
    assign_choices
    assign_winners
  end

private
  def options
    [:rock, :paper, :scissors]
  end

  def assign_choices
    if @player_choice == :rock && @computer_choice == :paper
      @winning_choice = :paper
      @losing_choice = :rock
    elsif @player_choice == :rock && @computer_choice == :scissors
      @winning_choice = :rock
      @losing_choice = :scissors
    elsif @player_choice == :rock && @computer_choice == :rock
      @winning_choice = :tie
      @losing_choice = :tie
    elsif @player_choice == :paper && @computer_choice == :rock
      @winning_choice = :paper
      @losing_choice = :rock
    elsif @player_choice == :paper && @computer_choice == :paper
      @winning_choice = :tie
      @losing_choice = :tie
    elsif @player_choice == :paper && @computer_choice == :scissors
      @winning_choice = :scissors
      @losing_choice = :paper
    elsif @player_choice == :scissors && @computer_choice == :rock
      @winning_choice = :scissors
      @losing_choice = :rock
    elsif @player_choice == :scissors && @computer_choice == :paper
      @winning_choice = :scissors
      @losing_choice = :paper
    elsif @player_choice == :scissors && @computer_choice == :scissors
      @winning_choice = :tie
      @losing_choice = :tie
    end

    def assign_winners
      if @winning_choice == @player_choice
        @winning_player = @player
      elsif @winning_choice == :tie
        @winning_player = nil
      elsif @winning_choice == @computer_choice
        @winning_player = :computer
      end
    end

  end

end
