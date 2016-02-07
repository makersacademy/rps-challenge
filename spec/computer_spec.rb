require 'computer'

describe Computer do
  subject(:player1){described_class.new}

  describe "#name" do
    it "return Computer player's name" do
      expect(['Dave', 'Harry','Olivia', 'Anna']).to include(player1.name)
    end
  end

  describe "#auto_choice" do
    it "return automate Computer player's choice for the game" do
      player1.auto_choice
      expect(player1.choice_options).to include(player1.player_choice)
    end
  end

end