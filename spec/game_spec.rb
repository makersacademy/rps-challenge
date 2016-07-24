require 'game'

describe Game do
  let(:player) {"Noby"}
  let(:user_hand) {"Rock"}
  subject(:game) {described_class.new(player)}

  describe 'Player information' do
    it 'stores the name of a player' do
      expect(game.player).to eq "Noby"
    end
  end

  describe "User decides its hand." do
    it "stores user's hand" do
      expect(game.user_hand(user_hand)).to eq "Rock"
    end
  end

  describe "Machine decides its hand." do
    it "stores machine's hand" do
      allow(game).to receive(:machine_hand).and_return("Scissors")
      expect(game.machine_hand).to eq "Scissors"
    end
  end

  describe "result" do
    before do
      game.user_hand(user_hand)
    end
    it "decides who is a winner" do
      expect(game.result("Scissors")).to eq "You win!"
    end
    it "decides who is a loser" do
      expect(game.result("Paper")).to eq "Machine wins!"
    end
    it "decides if it is a draw" do
      expect(game.result("Rock")).to eq "Draw!"
    end
  end
end
