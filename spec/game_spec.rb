require 'game'

describe Game do
  let(:game) { described_class.new('Player') }
  context "When starting a new game" do
    it 'Should have a player' do
      expect(game.player).to eq('Player')
    end
  end

  context 'when playing' do

    it 'returns player as the winner' do
      srand(0)
      expect(game.start_game('paper')).to eq('Player')
    end

    it 'returns player as the winner' do
      srand(1)
      expect(game.start_game('scissor')).to eq('Player')
    end

    it 'returns player as the winner' do
      srand(678_09)
      expect(game.start_game('rock')).to eq('Player')
    end

    it 'returns the computer as the winner' do
      srand(0)
      expect(game.start_game('scissor')).to eq('The Computer')
    end

    it 'returns the computer as the winner' do
      srand(1)
      expect(game.start_game('rock')).to eq('The Computer')
    end

    it 'returns the computer as the winner' do
      srand(678_09)
      expect(game.start_game('paper')).to eq('The Computer')
    end

    it 'returns no one as the winner if draw' do
      srand(0)
      expect(game.start_game('rock')).to eq('No one')
    end

    it 'returns no one as the winner if draw' do
      srand(1)
      expect(game.start_game('paper')).to eq('No one')
    end

    it 'returns no one as the winner if draw' do
      srand(678_09)
      expect(game.start_game('scissor')).to eq('No one')
    end
  end

end
