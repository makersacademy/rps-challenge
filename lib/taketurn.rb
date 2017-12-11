
class Taketurn
  attr_reader :player_name, :player_option, :computer_option

  def initialize(variables)
    @player_name = variables["player_name"]
    @player_option = variables["player_option"]
    @computer_option = variables["computer_option"]
  end

  def win?
    turn_result == 'win'
  end

  def turn_result
    if @player_option == "Rock"
      if @computer_option == "Scissors"
        'win'
      elsif @computer_option == "Paper"
        'lose'
      end
    elsif @player_option == "Paper"
      # ....

end
