class Gameplay 
  attr_reader :player_name, :player_choice, :opponent_choice
  RPS_OUTCOMES = {
    :Rock     => {:Rock => :draw, :Paper => :lose, :scissors => :win},
    :Paper    => {:Rock => :win, :paper => :draw, :scissors => :lose},
    :Scissors => {:Rock => :lose, :paper => :win, :scissors => :draw}
  } #hash of hashes

  def initialize(session_hash)
    @player_name = session_hash[:player_name]
    @player_choice = session_hash[:player_choice]
    @opponent_choice = session_hash[:opponent_choice]
  end

  def win?
    result == :win # better to keep this boolean simple, with the rules contained within a private method result
  end

  private 
  
  def result
    p @player_name
    p @opponent_choice
    p @player_choice
    return if @opponent_choice == nil? || @player_choice == nil?
  
    RPS_OUTCOMES[@player_choice][@opponent_choice] # used a hash like this to avoid using lots of confusing if statements
  end
end