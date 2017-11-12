require 'game'

describe Game do

  let(:game){ described_class.new('Player')}
  context "When starting a new game" do
    it 'Should have a player' do
      expect(game.player).to eq('Player')
    end
  end

  context 'when playing' do
    it "Player wins if chooses paper vs rock" do
      srand(0)
      expect(game.player_wins?('paper')).to eq(true)
    end

    it "Player wins if chooses scissor vs paper" do
      srand(1)
      expect(game.player_wins?('scissor')).to eq(true)
    end

    it "Player wins if chooses rock vs scissor" do
      srand(67809)
      expect(game.player_wins?('rock')).to eq(true)
    end
  end

end
