class Rps_Game
  attr_reader :pc_choice

  def initialize
    @game = { :rock => nil, :paper => nil, :scissors => nil }
  end
  def add_player(name, choice)
    @game[choice.to_sym] = name.to_sym # user selects choice
  end
  def pc_choose_rps
    leftover_options = @game.select {|k,v| v == nil}
    # pc chooses from remaining options
    pc_choice = leftover_options.keys.sample 
    @game[pc_choice] = :PC
    @pc_choice = pc_choice.to_s #accesible for results
  end
  def run_game
    pc_choose_rps
    # remove unused choice to select winner
    selected_choices = @game.select {|k,v| v != nil} 
    winner = run_game_logic(selected_choices)
    print_winner(winner) # as string, for controller comparison
  end

  def run_game_logic(choices)
    # returns name of winner from two choices
    return @game.fetch(:rock) if choices.key?(:rock) && choices.key?(:scissors)
    return @game.fetch(:paper) if choices.key?(:rock) && choices.key?(:paper)
    return @game.fetch(:scissors) if choices.key?(:paper) && choices.key?(:scissors)
  end

  def print_winner(winner)
    puts winner.to_s
  end

end