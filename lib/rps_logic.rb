class RpsLogic

  attr_reader :bot_choice, :choice
  def initialize(choice)
    @choice = choice
    @bot_choice = ['Rock', 'Paper', 'Scissors'].sample
  end

end
