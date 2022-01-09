class Game

  attr_reader :player_name, :player_choice, :computer_choice, :outcome

  RULES = {
    'Rock' => { 'Rock' => :draw, 'Paper' => :lose, 'Scissors' => :win },
    'Paper' => { 'Rock' => :win, 'Paper' => :draw, 'Scissors' => :lose },
    'Scissors' => { 'Rock' => :lose, 'Paper' => :win, 'Scissors' => :draw } }.freeze

  def initialize(session)
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    @outcome = ""
  end

  def assign_outcome
    @outcome << check_outcome.to_s
  end 

  private

  def check_outcome
    RULES[@player_choice][@computer_choice]
  end 
end 
