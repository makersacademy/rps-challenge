class Player

 attr_reader :name, :player_choice

 def initialize(name)
   @name = name
   @player_choice = nil
 end

 def choose_rock
   @player_choice = :rock
 end

 def choose_paper
   @player_choice = :paper
 end

 def choose_scissors
   @player_choice = :scissors
 end

 def choose_lizard
   @player_choice = :lizard
 end

 def choose_spock
   @player_choice = :spock
 end


end
