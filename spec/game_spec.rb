describe Game do
  
  subject(:game) { described_class.new(player_one, computer) }
  let(:player_one) { double :player1, name: "Herbert"}
  let(:computer) { double :player2, name: "Big Blue"}
  
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
      game.selection("rock")
      expect(game.player_1_choice).to eq "rock"
    end
    it "records the correct selection for player 2" do
      game.switch_turns
      game.selection("rock")
      expect(game.player_2_choice).to eq "rock"
    end
  end
  
  describe "#give_result" do
    it "gives the correct result = p1 wins (p1 = 'paper', computer = 'rock')" do
      game.selection("scissors")
      game.switch_turns
      game.selection("paper")
      expect(game.give_result).to eq player_one.name      
    end

    it "gives the correct result = computer wins (p1 = 'rock', computer = 'paper')" do
      game.selection("rock")
      game.switch_turns
      game.selection("paper")
      expect(game.give_result).to eq computer.name     
    end
    
    it "gives the correct result = draw (p1 = 'scissors', computer = 'scissors')" do
      game.selection("scissors")
      game.switch_turns
      game.selection("scissors")
      expect(game.give_result).to eq "Draw"        
    end
  end
  
end