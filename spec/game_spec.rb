describe Game do
  
  subject(:game) { described_class.new(player_one, computer) }
  let(:player_one) { double :player1}
  let(:computer) { double :player2}
  let(:rock) { double :choice }
  let(:paper) { double :choice }
  let(:scissors) { double :choice }
  
  describe "initialize" do
    it "accepts player 1 to the game" do
      expect(game.player_1).to eq player_one   
    end
    it "accepts player 2 to the game" do
      expect(game.player_2).to eq computer   
    end
  end
  
  describe "#switch_turns" do
    it "switches turns successfully once" do
      game.switch_turns
      expect(game.current_turn).to eq computer
    end
    it "switches turns successfully a second time" do
      game.switch_turns
      game.switch_turns
      expect(game.current_turn).to eq player_one
    end
  end
  
  describe "#selection" do
    it "records the correct selection for player 1" do
      game.selection(rock)
      expect(game.player_1_choice).to eq rock
    end
    it "records the correct selection for player 2" do
      game.switch_turns
      game.selection(rock)
      expect(game.player_2_choice).to eq rock
    end
    
  end
  
end