require 'game'

describe Game do  
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:player_class) { double :player_class }

  subject(:game) {
    described_class.new("Alice", "Bob", player_class: player_class)
  }

  describe '#move' do
    it "sets both player's moves" do
      skip "TODO"
    end

    it "sets player 1 as the winner" do
      skip "TODO"
    end

    it "sets player 2 is the winner" do
      skip "TODO"
    end

    it "sets a draw" do
      skip "TODO"
    end
  end
end
