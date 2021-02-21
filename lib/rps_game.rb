class Rps_Game

  def initialize
    @game = { :rock => nil, :paper => nil, :scissors => nil }
  end

 
  def add_player(name, choice)
    @game[choice.to_sym] = name.to_sym
  end

  def pc_choose_rps
    leftover_options = @game.select {|k,v| v == nil}
    pc_choice = leftover_options.keys.sample
    # puts pc_choice
    @game[pc_choice] = :PC
  end

  def select_winner
    pc_choose_rps
    selected_choices = @game.select {|k,v| v != nil}  # check only 2 entries
    # selected_choices.each {|k,v| p k,v }

    @game.fetch(:rock) if selected_choices.key?(:rock) && selected_choices.key?(:scissors)
    @game.fetch(:paper) if selected_choices.key?(:rock) && selected_choices.key?(:paper)
    @game.fetch(:scissors) if selected_choices.key?(:paper) && selected_choices.key?(:scissors)
  end

end