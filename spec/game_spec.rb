describe Game do
  subject(:game1) { Game.new(:player) }
  let(:player)    { double :player }

  describe '#ai_choice' do
    it "returns ai choice" do
      srand(3)
      expect(game1.ai_choice).to eq "Scissors"
    end
  end

  describe '#who_wins' do
    it "returns that player wins" do
      expect(game1.who_wins('Rock', 'Scissors')).to eq 'You win!'
    end
    it "returns that player loses" do
      expect(game1.who_wins('Rock', 'Paper')).to eq 'You lose!'
    end
    it "returns that player draws" do
      expect(game1.who_wins('Rock', 'Rock')).to eq 'It\'s a draw!'
    end
  end
end
