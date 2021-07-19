class Game
  attr_reader :player_name, :player_choice, :computer_choice

  def self.instance
    @instance ||= Game.new
  end

  def start(name)
    @player_name = name
  end

  def rps_sample
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def set_choices(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def result_check
    current_match = { @player_choice => @computer_choice }
    lose_matches = [{ "Rock" => "Paper" }, { "Paper" => "Scissors" }, { "Scissors" => "Rock" }]
    
    if @player_choice == @computer_choice
      '/draw'
    elsif lose_matches.include? current_match
      '/lose'
    else
      '/win'
    end
  end  

  def choice_handler(player_choice, computer_choice)
    set_choices(player_choice, computer_choice)
    result_check
  end
  
end
