require 'game'


describe Game do
  subject(:game) { described_class.new ('Samuel')}

  describe '#new' do
    it 'returns a player name' do
      expect(game.player).to eq 'Samuel'
    end
  end

  describe '#result' do
    it "when player wins" do
      user = 'Rock'
      computer = 'Scissors'
      message = 'Rock smashes scissors! You win!'
      expect(game.result(user, computer)).to eq message
    end

    it "when computer wins" do
      user = 'Scissors'
      computer = 'Rock'
      message = 'Rock smashes scissors! You lose'
      expect(game.result(user, computer)).to eq message
    end

    it "when it is a draw" do
      user = 'Paper'
      computer = 'Paper'
      message = 'It is a draw!'
      expect(game.result(user, computer)).to eq message
    end
  end
end