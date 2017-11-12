require 'game'

describe Game do

  let(:game){ described_class.new('Player')}
  context "When starting a new game" do
    it 'Should have a player' do
      expect(game.player).to eq('Player')
    end
  end

  context 'when playing' do

    it 'returns player as the winner' do
      srand(0)
      expect(game.winner('paper')).to eq('Player')
    end

    it 'returns player as the winner' do
      srand(1)
      expect(game.winner('scissor')).to eq('Player')
    end

    it 'returns player as the winner' do
      srand(67809)
      expect(game.winner('rock')).to eq('Player')
    end

    it 'returns the computer as the winner' do
      srand(0)
      expect(game.winner('rock')).to eq('The Computer')
    end

    it 'returns the computer as the winner' do
      srand(1)
      expect(game.winner('paper')).to eq('The Computer')
    end

    it 'returns the computer as the winner' do
      srand(67809)
      expect(game.winner('paper')).to eq('The Computer')
    end
  end

end
