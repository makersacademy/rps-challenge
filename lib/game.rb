class Game
  CHOICES = ['Rock', 'Paper', 'Scissors']

  attr_reader :game_choice, :player_choice

  def initialize(player_choice)
    raise "Invalid choice" if choice_invalid?(player_choice)
    @player_choice = player_choice.capitalize
  end


  def choose
    @game_choice = CHOICES.sample
    combine_choices
  end


  def determine_the_winner
    if same_choices?
      @winner = :non
    elsif rock_and_scissors_pair?
      @winner = rock_key
    else
      @winner = smaller_key
    end
  end






  private

  def combine_choices
    @combined_choices =  { player: @player_choice, game: @game_choice }
  end

  def same_choices?
    @player_choice == @game_choice
  end

  def rock_and_scissors_pair?
    @combined_choices.has_value?('scissors') && @combined_choices.has_value?('rock')
  end

  def choice_invalid?(player_choice)
    !(CHOICES.include? player_choice.capitalize)
  end

  def rock_key
    @combined_choices.key('rock')
  end

  def smaller_key
    @combined_choices.min_by{ |k,v| v }[0]
  end

end
